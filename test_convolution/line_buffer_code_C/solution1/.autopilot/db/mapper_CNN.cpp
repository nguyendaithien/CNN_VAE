#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void CNN(int, int, int, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_CNN_hw(int __xlx_apatb_param_padding, int __xlx_apatb_param_width, int __xlx_apatb_param_hight, volatile void * __xlx_apatb_param_image_r, volatile void * __xlx_apatb_param_output_conv1, volatile void * __xlx_apatb_param_output_pooling1, volatile void * __xlx_apatb_param_output_conv2) {
  // DUT call
  CNN(__xlx_apatb_param_padding, __xlx_apatb_param_width, __xlx_apatb_param_hight, __xlx_apatb_param_image_r, __xlx_apatb_param_output_conv1, __xlx_apatb_param_output_pooling1, __xlx_apatb_param_output_conv2);
}
