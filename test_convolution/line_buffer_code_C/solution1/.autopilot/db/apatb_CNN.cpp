#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_padding "../tv/cdatafile/c.CNN.autotvin_padding.dat"
#define AUTOTB_TVOUT_padding "../tv/cdatafile/c.CNN.autotvout_padding.dat"
// wrapc file define:
#define AUTOTB_TVIN_width "../tv/cdatafile/c.CNN.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.CNN.autotvout_width.dat"
// wrapc file define:
#define AUTOTB_TVIN_hight "../tv/cdatafile/c.CNN.autotvin_hight.dat"
#define AUTOTB_TVOUT_hight "../tv/cdatafile/c.CNN.autotvout_hight.dat"
// wrapc file define:
#define AUTOTB_TVIN_image_r "../tv/cdatafile/c.CNN.autotvin_image_r.dat"
#define AUTOTB_TVOUT_image_r "../tv/cdatafile/c.CNN.autotvout_image_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv1 "../tv/cdatafile/c.CNN.autotvin_output_conv1.dat"
#define AUTOTB_TVOUT_output_conv1 "../tv/cdatafile/c.CNN.autotvout_output_conv1.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_pooling1 "../tv/cdatafile/c.CNN.autotvin_output_pooling1.dat"
#define AUTOTB_TVOUT_output_pooling1 "../tv/cdatafile/c.CNN.autotvout_output_pooling1.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv2 "../tv/cdatafile/c.CNN.autotvin_output_conv2.dat"
#define AUTOTB_TVOUT_output_conv2 "../tv/cdatafile/c.CNN.autotvout_output_conv2.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_padding "../tv/rtldatafile/rtl.CNN.autotvout_padding.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_width "../tv/rtldatafile/rtl.CNN.autotvout_width.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_hight "../tv/rtldatafile/rtl.CNN.autotvout_hight.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_image_r "../tv/rtldatafile/rtl.CNN.autotvout_image_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv1 "../tv/rtldatafile/rtl.CNN.autotvout_output_conv1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_pooling1 "../tv/rtldatafile/rtl.CNN.autotvout_output_pooling1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv2 "../tv/rtldatafile/rtl.CNN.autotvout_output_conv2.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  padding_depth = 0;
  width_depth = 0;
  hight_depth = 0;
  image_r_depth = 0;
  output_conv1_depth = 0;
  output_pooling1_depth = 0;
  output_conv2_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{padding " << padding_depth << "}\n";
  total_list << "{width " << width_depth << "}\n";
  total_list << "{hight " << hight_depth << "}\n";
  total_list << "{image_r " << image_r_depth << "}\n";
  total_list << "{output_conv1 " << output_conv1_depth << "}\n";
  total_list << "{output_pooling1 " << output_pooling1_depth << "}\n";
  total_list << "{output_conv2 " << output_conv2_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int padding_depth;
    int width_depth;
    int hight_depth;
    int image_r_depth;
    int output_conv1_depth;
    int output_pooling1_depth;
    int output_conv2_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
extern "C" void CNN_hw_stub_wrapper(int, int, int, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_CNN_hw(int __xlx_apatb_param_padding, int __xlx_apatb_param_width, int __xlx_apatb_param_hight, volatile void * __xlx_apatb_param_image_r, volatile void * __xlx_apatb_param_output_conv1, volatile void * __xlx_apatb_param_output_pooling1, volatile void * __xlx_apatb_param_output_conv2) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > output_conv1_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "output_conv1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "output_conv1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_output_conv1)[0*8+0] = output_conv1_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+1] = output_conv1_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+2] = output_conv1_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+3] = output_conv1_pc_buffer[0].range(31, 24).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+4] = output_conv1_pc_buffer[0].range(39, 32).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+5] = output_conv1_pc_buffer[0].range(47, 40).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+6] = output_conv1_pc_buffer[0].range(55, 48).to_int64();
((char*)__xlx_apatb_param_output_conv1)[0*8+7] = output_conv1_pc_buffer[0].range(63, 56).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_pooling1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > output_pooling1_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "output_pooling1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_pooling1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "output_pooling1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_output_pooling1)[0*8+0] = output_pooling1_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+1] = output_pooling1_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+2] = output_pooling1_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+3] = output_pooling1_pc_buffer[0].range(31, 24).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+4] = output_pooling1_pc_buffer[0].range(39, 32).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+5] = output_pooling1_pc_buffer[0].range(47, 40).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+6] = output_pooling1_pc_buffer[0].range(55, 48).to_int64();
((char*)__xlx_apatb_param_output_pooling1)[0*8+7] = output_pooling1_pc_buffer[0].range(63, 56).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > output_conv2_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "output_conv2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "output_conv2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_output_conv2)[0*8+0] = output_conv2_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+1] = output_conv2_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+2] = output_conv2_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+3] = output_conv2_pc_buffer[0].range(31, 24).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+4] = output_conv2_pc_buffer[0].range(39, 32).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+5] = output_conv2_pc_buffer[0].range(47, 40).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+6] = output_conv2_pc_buffer[0].range(55, 48).to_int64();
((char*)__xlx_apatb_param_output_conv2)[0*8+7] = output_conv2_pc_buffer[0].range(63, 56).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
// print padding Transactions
{
aesl_fh.write(AUTOTB_TVIN_padding, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_padding);
aesl_fh.write(AUTOTB_TVIN_padding, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.padding_depth);
aesl_fh.write(AUTOTB_TVIN_padding, end_str());
}

// print width Transactions
{
aesl_fh.write(AUTOTB_TVIN_width, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_width);
aesl_fh.write(AUTOTB_TVIN_width, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.width_depth);
aesl_fh.write(AUTOTB_TVIN_width, end_str());
}

// print hight Transactions
{
aesl_fh.write(AUTOTB_TVIN_hight, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_hight);
aesl_fh.write(AUTOTB_TVIN_hight, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.hight_depth);
aesl_fh.write(AUTOTB_TVIN_hight, end_str());
}

// print image_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_image_r, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_image_r);
aesl_fh.write(AUTOTB_TVIN_image_r, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.image_r_depth);
aesl_fh.write(AUTOTB_TVIN_image_r, end_str());
}

// print output_conv1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_output_conv1, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_output_conv1);
aesl_fh.write(AUTOTB_TVIN_output_conv1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.output_conv1_depth);
aesl_fh.write(AUTOTB_TVIN_output_conv1, end_str());
}

// print output_pooling1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_output_pooling1, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_output_pooling1);
aesl_fh.write(AUTOTB_TVIN_output_pooling1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.output_pooling1_depth);
aesl_fh.write(AUTOTB_TVIN_output_pooling1, end_str());
}

// print output_conv2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_output_conv2, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_output_conv2);
aesl_fh.write(AUTOTB_TVIN_output_conv2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.output_conv2_depth);
aesl_fh.write(AUTOTB_TVIN_output_conv2, end_str());
}

CodeState = CALL_C_DUT;
CNN_hw_stub_wrapper(__xlx_apatb_param_padding, __xlx_apatb_param_width, __xlx_apatb_param_hight, __xlx_apatb_param_image_r, __xlx_apatb_param_output_conv1, __xlx_apatb_param_output_pooling1, __xlx_apatb_param_output_conv2);
CodeState = DUMP_OUTPUTS;
// print output_conv1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_output_conv1, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_output_conv1);
aesl_fh.write(AUTOTB_TVOUT_output_conv1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.output_conv1_depth);
aesl_fh.write(AUTOTB_TVOUT_output_conv1, end_str());
}

// print output_pooling1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_output_pooling1, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_output_pooling1);
aesl_fh.write(AUTOTB_TVOUT_output_pooling1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.output_pooling1_depth);
aesl_fh.write(AUTOTB_TVOUT_output_pooling1, end_str());
}

// print output_conv2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_output_conv2, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_output_conv2);
aesl_fh.write(AUTOTB_TVOUT_output_conv2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.output_conv2_depth);
aesl_fh.write(AUTOTB_TVOUT_output_conv2, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
