#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
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
using hls::sim::Byte;
struct __cosim_s64__ { char data[64]; };
extern "C" void computePointHLS(Byte<64>*, Byte<64>*, int, int, int);
extern "C" void apatb_computePointHLS_hw(volatile void * __xlx_apatb_param_dataIn, volatile void * __xlx_apatb_param_layerWeight, volatile void * __xlx_apatb_param_dataOut_final) {
using hls::sim::createStream;
  // Collect __xlx_dataIn_dataOut_final__tmp_vec
std::vector<Byte<64>> __xlx_dataIn_dataOut_final__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_dataIn_dataOut_final__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_dataIn)[i]);
}
  int __xlx_size_param_dataIn = 1;
  int __xlx_offset_param_dataIn = 0;
  int __xlx_offset_byte_param_dataIn = 0*64;
for (size_t i = 0; i < 1; ++i){
__xlx_dataIn_dataOut_final__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_dataOut_final)[i]);
}
  int __xlx_size_param_dataOut_final = 1;
  int __xlx_offset_param_dataOut_final = 1;
  int __xlx_offset_byte_param_dataOut_final = 1*64;
  // Collect __xlx_layerWeight__tmp_vec
std::vector<Byte<64>> __xlx_layerWeight__tmp_vec;
for (size_t i = 0; i < 1; ++i){
__xlx_layerWeight__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_layerWeight)[i]);
}
  int __xlx_size_param_layerWeight = 1;
  int __xlx_offset_param_layerWeight = 0;
  int __xlx_offset_byte_param_layerWeight = 0*64;
  // DUT call
  computePointHLS(__xlx_dataIn_dataOut_final__tmp_vec.data(), __xlx_layerWeight__tmp_vec.data(), __xlx_offset_byte_param_dataIn, __xlx_offset_byte_param_layerWeight, __xlx_offset_byte_param_dataOut_final);
// print __xlx_apatb_param_dataIn
for (size_t i = 0; i < __xlx_size_param_dataIn; ++i) {
((Byte<64>*)__xlx_apatb_param_dataIn)[i] = __xlx_dataIn_dataOut_final__tmp_vec[__xlx_offset_param_dataIn+i];
}
// print __xlx_apatb_param_dataOut_final
for (size_t i = 0; i < __xlx_size_param_dataOut_final; ++i) {
((Byte<64>*)__xlx_apatb_param_dataOut_final)[i] = __xlx_dataIn_dataOut_final__tmp_vec[__xlx_offset_param_dataOut_final+i];
}
// print __xlx_apatb_param_layerWeight
for (size_t i = 0; i < __xlx_size_param_layerWeight; ++i) {
((Byte<64>*)__xlx_apatb_param_layerWeight)[i] = __xlx_layerWeight__tmp_vec[__xlx_offset_param_layerWeight+i];
}
}
