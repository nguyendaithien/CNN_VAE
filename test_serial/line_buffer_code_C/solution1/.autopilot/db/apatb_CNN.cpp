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
#define AUTOTB_TVIN_padding "../tv/cdatafile/c.CNN_CNN.autotvin_padding.dat"
#define AUTOTB_TVOUT_padding "../tv/cdatafile/c.CNN_CNN.autotvout_padding.dat"
// wrapc file define:
#define AUTOTB_TVIN_width "../tv/cdatafile/c.CNN_CNN.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.CNN_CNN.autotvout_width.dat"
// wrapc file define:
#define AUTOTB_TVIN_hight "../tv/cdatafile/c.CNN_CNN.autotvin_hight.dat"
#define AUTOTB_TVOUT_hight "../tv/cdatafile/c.CNN_CNN.autotvout_hight.dat"
// wrapc file define:
#define AUTOTB_TVIN_image "../tv/cdatafile/c.CNN_CNN.autotvin_image_r.dat"
#define AUTOTB_TVOUT_image "../tv/cdatafile/c.CNN_CNN.autotvout_image_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv1 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv1.dat"
#define AUTOTB_TVOUT_output_conv1 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv1.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_pooling1 "../tv/cdatafile/c.CNN_CNN.autotvin_output_pooling1.dat"
#define AUTOTB_TVOUT_output_pooling1 "../tv/cdatafile/c.CNN_CNN.autotvout_output_pooling1.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv2 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv2.dat"
#define AUTOTB_TVOUT_output_conv2 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv2.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_pooling2 "../tv/cdatafile/c.CNN_CNN.autotvin_output_pooling2.dat"
#define AUTOTB_TVOUT_output_pooling2 "../tv/cdatafile/c.CNN_CNN.autotvout_output_pooling2.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv3 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv3.dat"
#define AUTOTB_TVOUT_output_conv3 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv3.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_pooling3 "../tv/cdatafile/c.CNN_CNN.autotvin_output_pooling3.dat"
#define AUTOTB_TVOUT_output_pooling3 "../tv/cdatafile/c.CNN_CNN.autotvout_output_pooling3.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv4 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv4.dat"
#define AUTOTB_TVOUT_output_conv4 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv4.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_upsampling1 "../tv/cdatafile/c.CNN_CNN.autotvin_output_upsampling1.dat"
#define AUTOTB_TVOUT_output_upsampling1 "../tv/cdatafile/c.CNN_CNN.autotvout_output_upsampling1.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv5 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv5.dat"
#define AUTOTB_TVOUT_output_conv5 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv5.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_upsampling2 "../tv/cdatafile/c.CNN_CNN.autotvin_output_upsampling2.dat"
#define AUTOTB_TVOUT_output_upsampling2 "../tv/cdatafile/c.CNN_CNN.autotvout_output_upsampling2.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv6 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv6.dat"
#define AUTOTB_TVOUT_output_conv6 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv6.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_upsampling3 "../tv/cdatafile/c.CNN_CNN.autotvin_output_upsampling3.dat"
#define AUTOTB_TVOUT_output_upsampling3 "../tv/cdatafile/c.CNN_CNN.autotvout_output_upsampling3.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_conv7 "../tv/cdatafile/c.CNN_CNN.autotvin_output_conv7.dat"
#define AUTOTB_TVOUT_output_conv7 "../tv/cdatafile/c.CNN_CNN.autotvout_output_conv7.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_padding "../tv/rtldatafile/rtl.CNN_CNN.autotvout_padding.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_width "../tv/rtldatafile/rtl.CNN_CNN.autotvout_width.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_hight "../tv/rtldatafile/rtl.CNN_CNN.autotvout_hight.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_image "../tv/rtldatafile/rtl.CNN_CNN.autotvout_image_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv1 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_pooling1 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_pooling1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv2 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_pooling2 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_pooling2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv3 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_pooling3 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_pooling3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv4 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_upsampling1 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_upsampling1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv5 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_upsampling2 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_upsampling2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv6 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_upsampling3 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_upsampling3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_conv7 "../tv/rtldatafile/rtl.CNN_CNN.autotvout_output_conv7.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  padding_depth = 0;
  width_depth = 0;
  hight_depth = 0;
  image_depth = 0;
  output_conv1_depth = 0;
  output_pooling1_depth = 0;
  output_conv2_depth = 0;
  output_pooling2_depth = 0;
  output_conv3_depth = 0;
  output_pooling3_depth = 0;
  output_conv4_depth = 0;
  output_upsampling1_depth = 0;
  output_conv5_depth = 0;
  output_upsampling2_depth = 0;
  output_conv6_depth = 0;
  output_upsampling3_depth = 0;
  output_conv7_depth = 0;
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
  total_list << "{image_r " << image_depth << "}\n";
  total_list << "{output_conv1 " << output_conv1_depth << "}\n";
  total_list << "{output_pooling1 " << output_pooling1_depth << "}\n";
  total_list << "{output_conv2 " << output_conv2_depth << "}\n";
  total_list << "{output_pooling2 " << output_pooling2_depth << "}\n";
  total_list << "{output_conv3 " << output_conv3_depth << "}\n";
  total_list << "{output_pooling3 " << output_pooling3_depth << "}\n";
  total_list << "{output_conv4 " << output_conv4_depth << "}\n";
  total_list << "{output_upsampling1 " << output_upsampling1_depth << "}\n";
  total_list << "{output_conv5 " << output_conv5_depth << "}\n";
  total_list << "{output_upsampling2 " << output_upsampling2_depth << "}\n";
  total_list << "{output_conv6 " << output_conv6_depth << "}\n";
  total_list << "{output_upsampling3 " << output_upsampling3_depth << "}\n";
  total_list << "{output_conv7 " << output_conv7_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int padding_depth;
    int width_depth;
    int hight_depth;
    int image_depth;
    int output_conv1_depth;
    int output_pooling1_depth;
    int output_conv2_depth;
    int output_pooling2_depth;
    int output_conv3_depth;
    int output_pooling3_depth;
    int output_conv4_depth;
    int output_upsampling1_depth;
    int output_conv5_depth;
    int output_upsampling2_depth;
    int output_conv6_depth;
    int output_upsampling3_depth;
    int output_conv7_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void CNN_hw_stub(int, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_CNN_hw(int __xlx_apatb_param_padding, int __xlx_apatb_param_width, int __xlx_apatb_param_hight, volatile void * __xlx_apatb_param_image, volatile void * __xlx_apatb_param_output_conv1, volatile void * __xlx_apatb_param_output_pooling1, volatile void * __xlx_apatb_param_output_conv2, volatile void * __xlx_apatb_param_output_pooling2, volatile void * __xlx_apatb_param_output_conv3, volatile void * __xlx_apatb_param_output_pooling3, volatile void * __xlx_apatb_param_output_conv4, volatile void * __xlx_apatb_param_output_upsampling1, volatile void * __xlx_apatb_param_output_conv5, volatile void * __xlx_apatb_param_output_upsampling2, volatile void * __xlx_apatb_param_output_conv6, volatile void * __xlx_apatb_param_output_upsampling3, volatile void * __xlx_apatb_param_output_conv7) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
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

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 12544; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv1)[j] = output_conv1_pc_buffer[i].to_int64();
          }}}
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

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_pooling1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_pooling1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 3136; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_pooling1)[j] = output_pooling1_pc_buffer[i].to_int64();
          }}}
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

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1568; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv2)[j] = output_conv2_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_pooling2);
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
          std::vector<sc_bv<64> > output_pooling2_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_pooling2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_pooling2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 392; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_pooling2)[j] = output_pooling2_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv3);
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
          std::vector<sc_bv<64> > output_conv3_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 392; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv3)[j] = output_conv3_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_pooling3);
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
          std::vector<sc_bv<64> > output_pooling3_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_pooling3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_pooling3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 128; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_pooling3)[j] = output_pooling3_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv4);
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
          std::vector<sc_bv<64> > output_conv4_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 128; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv4)[j] = output_conv4_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_upsampling1);
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
          std::vector<sc_bv<64> > output_upsampling1_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_upsampling1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_upsampling1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 512; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_upsampling1)[j] = output_upsampling1_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv5);
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
          std::vector<sc_bv<64> > output_conv5_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 512; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv5)[j] = output_conv5_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_upsampling2);
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
          std::vector<sc_bv<64> > output_upsampling2_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_upsampling2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_upsampling2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 512; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_upsampling2)[j] = output_upsampling2_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv6);
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
          std::vector<sc_bv<64> > output_conv6_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2048; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv6)[j] = output_conv6_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_upsampling3);
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
          std::vector<sc_bv<64> > output_upsampling3_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_upsampling3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_upsampling3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 3136; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_upsampling3)[j] = output_upsampling3_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_output_conv7);
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
          std::vector<sc_bv<64> > output_conv7_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "output_conv7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              output_conv7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 784; j != e; ++j, ++i) {
            ((long long*)__xlx_apatb_param_output_conv7)[j] = output_conv7_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//padding
aesl_fh.touch(AUTOTB_TVIN_padding);
aesl_fh.touch(AUTOTB_TVOUT_padding);
//width
aesl_fh.touch(AUTOTB_TVIN_width);
aesl_fh.touch(AUTOTB_TVOUT_width);
//hight
aesl_fh.touch(AUTOTB_TVIN_hight);
aesl_fh.touch(AUTOTB_TVOUT_hight);
//image
aesl_fh.touch(AUTOTB_TVIN_image);
aesl_fh.touch(AUTOTB_TVOUT_image);
//output_conv1
aesl_fh.touch(AUTOTB_TVIN_output_conv1);
aesl_fh.touch(AUTOTB_TVOUT_output_conv1);
//output_pooling1
aesl_fh.touch(AUTOTB_TVIN_output_pooling1);
aesl_fh.touch(AUTOTB_TVOUT_output_pooling1);
//output_conv2
aesl_fh.touch(AUTOTB_TVIN_output_conv2);
aesl_fh.touch(AUTOTB_TVOUT_output_conv2);
//output_pooling2
aesl_fh.touch(AUTOTB_TVIN_output_pooling2);
aesl_fh.touch(AUTOTB_TVOUT_output_pooling2);
//output_conv3
aesl_fh.touch(AUTOTB_TVIN_output_conv3);
aesl_fh.touch(AUTOTB_TVOUT_output_conv3);
//output_pooling3
aesl_fh.touch(AUTOTB_TVIN_output_pooling3);
aesl_fh.touch(AUTOTB_TVOUT_output_pooling3);
//output_conv4
aesl_fh.touch(AUTOTB_TVIN_output_conv4);
aesl_fh.touch(AUTOTB_TVOUT_output_conv4);
//output_upsampling1
aesl_fh.touch(AUTOTB_TVIN_output_upsampling1);
aesl_fh.touch(AUTOTB_TVOUT_output_upsampling1);
//output_conv5
aesl_fh.touch(AUTOTB_TVIN_output_conv5);
aesl_fh.touch(AUTOTB_TVOUT_output_conv5);
//output_upsampling2
aesl_fh.touch(AUTOTB_TVIN_output_upsampling2);
aesl_fh.touch(AUTOTB_TVOUT_output_upsampling2);
//output_conv6
aesl_fh.touch(AUTOTB_TVIN_output_conv6);
aesl_fh.touch(AUTOTB_TVOUT_output_conv6);
//output_upsampling3
aesl_fh.touch(AUTOTB_TVIN_output_upsampling3);
aesl_fh.touch(AUTOTB_TVOUT_output_upsampling3);
//output_conv7
aesl_fh.touch(AUTOTB_TVIN_output_conv7);
aesl_fh.touch(AUTOTB_TVOUT_output_conv7);
CodeState = DUMP_INPUTS;
// print padding Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_padding, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_padding);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_padding, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.padding_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_padding, __xlx_sprintf_buffer.data());
}
// print width Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_width);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.width_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_width, __xlx_sprintf_buffer.data());
}
// print hight Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_hight, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_hight);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_hight, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.hight_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_hight, __xlx_sprintf_buffer.data());
}
// print image Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_image, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_image);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_image, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.image_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_image, __xlx_sprintf_buffer.data());
}
// print output_conv1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv1, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 12544; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv1, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv1, __xlx_sprintf_buffer.data());
}
// print output_pooling1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_pooling1, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 3136; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_pooling1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_pooling1, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_pooling1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_pooling1, __xlx_sprintf_buffer.data());
}
// print output_conv2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv2, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 1568; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv2, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv2, __xlx_sprintf_buffer.data());
}
// print output_pooling2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_pooling2, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 392; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_pooling2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_pooling2, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_pooling2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_pooling2, __xlx_sprintf_buffer.data());
}
// print output_conv3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv3, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 392; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv3, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv3, __xlx_sprintf_buffer.data());
}
// print output_pooling3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_pooling3, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 128; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_pooling3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_pooling3, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_pooling3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_pooling3, __xlx_sprintf_buffer.data());
}
// print output_conv4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv4, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 128; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv4)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv4, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv4, __xlx_sprintf_buffer.data());
}
// print output_upsampling1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_upsampling1, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 512; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_upsampling1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_upsampling1, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_upsampling1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_upsampling1, __xlx_sprintf_buffer.data());
}
// print output_conv5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv5, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 512; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv5)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv5, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv5, __xlx_sprintf_buffer.data());
}
// print output_upsampling2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_upsampling2, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 512; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_upsampling2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_upsampling2, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_upsampling2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_upsampling2, __xlx_sprintf_buffer.data());
}
// print output_conv6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv6, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 2048; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv6)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv6, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv6, __xlx_sprintf_buffer.data());
}
// print output_upsampling3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_upsampling3, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 3136; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_upsampling3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_upsampling3, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_upsampling3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_upsampling3, __xlx_sprintf_buffer.data());
}
// print output_conv7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_conv7, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 784; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv7)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_conv7, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_conv7, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
CNN_hw_stub(__xlx_apatb_param_padding, __xlx_apatb_param_width, __xlx_apatb_param_hight, __xlx_apatb_param_image, __xlx_apatb_param_output_conv1, __xlx_apatb_param_output_pooling1, __xlx_apatb_param_output_conv2, __xlx_apatb_param_output_pooling2, __xlx_apatb_param_output_conv3, __xlx_apatb_param_output_pooling3, __xlx_apatb_param_output_conv4, __xlx_apatb_param_output_upsampling1, __xlx_apatb_param_output_conv5, __xlx_apatb_param_output_upsampling2, __xlx_apatb_param_output_conv6, __xlx_apatb_param_output_upsampling3, __xlx_apatb_param_output_conv7);
CodeState = DUMP_OUTPUTS;
// print output_conv1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv1, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 12544; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv1, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv1, __xlx_sprintf_buffer.data());
}
// print output_pooling1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_pooling1, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 3136; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_pooling1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_pooling1, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_pooling1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_pooling1, __xlx_sprintf_buffer.data());
}
// print output_conv2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv2, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 1568; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv2, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv2, __xlx_sprintf_buffer.data());
}
// print output_pooling2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_pooling2, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 392; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_pooling2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_pooling2, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_pooling2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_pooling2, __xlx_sprintf_buffer.data());
}
// print output_conv3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv3, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 392; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv3, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv3, __xlx_sprintf_buffer.data());
}
// print output_pooling3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_pooling3, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 128; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_pooling3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_pooling3, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_pooling3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_pooling3, __xlx_sprintf_buffer.data());
}
// print output_conv4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv4, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 128; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv4)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv4, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv4, __xlx_sprintf_buffer.data());
}
// print output_upsampling1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_upsampling1, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 512; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_upsampling1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_upsampling1, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_upsampling1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_upsampling1, __xlx_sprintf_buffer.data());
}
// print output_conv5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv5, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 512; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv5)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv5, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv5, __xlx_sprintf_buffer.data());
}
// print output_upsampling2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_upsampling2, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 512; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_upsampling2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_upsampling2, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_upsampling2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_upsampling2, __xlx_sprintf_buffer.data());
}
// print output_conv6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv6, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 2048; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv6)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv6, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv6, __xlx_sprintf_buffer.data());
}
// print output_upsampling3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_upsampling3, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 3136; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_upsampling3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_upsampling3, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_upsampling3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_upsampling3, __xlx_sprintf_buffer.data());
}
// print output_conv7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_output_conv7, __xlx_sprintf_buffer.data());
  {{for (int j = 0, e = 784; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_output_conv7)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_output_conv7, __xlx_sprintf_buffer.data()); 
  }
}}
  tcl_file.set_num(1, &tcl_file.output_conv7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_output_conv7, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
