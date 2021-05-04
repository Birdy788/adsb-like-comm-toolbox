#include "QPSK_chain_encoder.hpp"


QPSK_chain_encoder::QPSK_chain_encoder(const uint32_t stream_length) :
    vec_sep   (  (stream_length/2      )),
    vec_bits  ( (stream_length/4)      ),
    vec_up    (   (stream_length*5)    ),
    vec_preamb ((stream_length)); // a refaire
    vec_filtre ((stream_length))  // a refaire

{

}


uint32_t QPSK_chain_encoder::ibuffer_size()
{
    return (vec_crc.size() - 4);
}


uint32_t QPSK_chain_encoder::obuffer_size()
{
    return vec_iq.size();
}


Encoder QPSK_chain_encoder::~QPSK_chain_encoder()
{
	
}


void QPSK_chain_encoder::execute(const std::vector<uint8_t>& src, std::vector<int8_t>* dst)
{
    i_sep.execute (src,      vec_sep );
    i_bits.execute  (vec_sep,  vec_bits);
    i_up.execute(vec_bits, vec_up);
    i_filtre.execute (vec_up, vec_filtre);
    i_preamb.execute  (vec_filtre,   vec_preamb);


    // Le buffer de sortie doit etre 2x plus grand...
    if( dst->size() != vec_preamb.size() )
    {
        printf("\x1B[33m(WW) vector size was updated in UpSampling(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", vec_preamb.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", dst->size());
        dst->resize( vec_preamb.size() );
    }

    memcpy(dst->data(), vec_preamb.data(), vec_preamb.size());
}
