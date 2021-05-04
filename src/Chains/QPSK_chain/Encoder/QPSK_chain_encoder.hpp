#ifndef QPSK_chain_encoder
#define QPSK_chain_encoder

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "QPSK_chain_encoder.hpp"
#include "../../template/Encoder/Encoder_chain.hpp"

//#include "../../../Frame/FECFrame.hpp"
//#include "../../../Processing/CRC32b/InsertCRC32b/InsertCRC32b.hpp"
//#include "../../../Processing/DataPacking//BitUnpacking/BitUnpacking.hpp"
//#include "../../../Processing/LDPC/Encoder/LDPCEncoder.hpp"
//#include "../../../Processing/ADSBSynchro/InsertADSBSynchro/InsertADSBSynchro.hpp"
#include "../../../Processing/Sampling/Up/UpSampling.hpp"
//#include "../../../Processing/IQ/Insertion/IQ_Insertion.hpp"

using namespace std;

class Encoder_ADBS_like_chain : public Encoder_chain{
private:
    vector<uint8_t> vec_sep;
    vector<uint8_t> vec_bits;
    vector< int8_t> vec_up;
    vector<uint8_t> vec_filtre;
    vector< int8_t> preamb;
  


    Separation_trames     i_sep;
    Bits_symb             i_bits;
    Upsampling            i_up;
    filtre                i_filtre;
    preamb                i_preamb;
  


public :
    Encoder_ADBS_chain(const uint32_t stream_length);

	~Encoder_ADBS_chain();

    void execute(const std::vector<uint8_t>& src, std::vector<int8_t>* dst);

    uint32_t ibuffer_size();
    uint32_t obuffer_size();
};

#endif
