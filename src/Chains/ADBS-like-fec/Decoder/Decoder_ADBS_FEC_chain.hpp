#ifndef _Decoder_ADBS_FEC_chain_
#define _Decoder_ADBS_FEC_chain_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../template/Decoder/Decoder_chain.hpp"

#include "../../../Processing/CRC32b/RemoveCRC32b/RemoveCRC32b.hpp"
#include "../../../Processing/CRC32b/CheckCRC32b/CheckCRC32b.hpp"
#include "../../../Processing/DataPacking/BitPacking/BitPacking.hpp"
#include "../../../Processing/LDPC/Decoder/LDPCDecoder.hpp"
#include "../../../Processing/ADSBSynchro/RemoveADSBSynchro/RemoveADSBSynchro.hpp"
#include "../../../Processing/PPM/demod/PPM_demod.hpp"
#include "../../../Processing/Sampling/Down/DownSampling.hpp"

#include "../../../Tools/Resizing/resize_vect_u8.hpp"

using namespace std;

class Decoder_ADBS_FEC_chain : public Decoder_chain{
private:
    vector<uint8_t> vec_down;
    vector<uint8_t> vec_oppm;
    vector<uint8_t> vec_osync;
    vector<uint8_t> vec_ofec;
    vector<uint8_t> vec_pack;
    vector<uint8_t> vec_final;

    DownSampling      o_down;
    PPM_demod         o_ppm;
    RemoveADSBSynchro o_sync;
    BitPacking        o_pack;
    CheckCRC32b       o_ccrc;
    LDPCDecoder       dec;
    RemoveCRC32b      c_rcrc;

private:
    uint32_t counter_frames;
    uint32_t counter_frm_ok;
    uint32_t counter_crc_ok_1;
    uint32_t counter_crc_ok_2;
    uint32_t counter_rcv_bits;
    uint32_t counter_snd_bits;

public :
    Decoder_ADBS_FEC_chain(const uint32_t stream_length);

	~Decoder_ADBS_FEC_chain();

    bool execute(const std::vector<uint8_t>& src, std::vector<uint8_t>* dst);

    uint32_t ibuffer_size();
    uint32_t obuffer_size();

};

#endif
