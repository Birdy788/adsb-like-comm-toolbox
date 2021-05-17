#include "QPSK_mod.hpp"


QPSK_mod::QPSK_mod(const int8_t mScale)
{
    scale = mScale;
}


QPSK_mod::~QPSK_mod()
{
	
}


/*void QPSK_mod::execute(std::vector<uint8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus grand...
    if( obuffer.size() != (2 * ibuffer.size()) )
    {
        printf("\x1B[33m(WW) vector size was updated in QPSK_mod(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(2 * ibuffer.size());
    }

    const int8_t re[] = {-1, -1, +1, +1, 0};
    const int8_t im[] = {-1, +1, -1, +1, 0};

    uint32_t n = ibuffer.size();
    for(uint32_t i = 0 ; i < n; i += 1)
    {
        const uint8_t value = ibuffer[i];
        obuffer[2*i+0] = re[value];
        obuffer[2*i+1] = im[value];
    }
}*/

void execute(string bits,std::vector<int8_t>& symboles, int Ns, int n_b)
{
    
    for (int k=0; k<Ns; k++)
    {
        if(bits[n_b*k] == 0 && bits[n_b+1] == 0){
            complex <double> symboles[k] = 1/sqrt(2) + 1i * 1/sqrt(2);
        }
        else if (bits[n_b*k] == 0 && bits[n_b+1] == 1){
            complex <double> symboles[k] = 1/sqrt(2) - 1i * 1/sqrt(2);
        }
        else if (bits[n_b*k] == 1 && bits[n_b+1] == 0){
            complex <double> symboles[k] = -1/sqrt(2) + 1i * 1/sqrt(2);
        }
        else{
            complex <double> symboles[k] = -1/sqrt(2) - 1i * 1/sqrt(2);
        }
    }
}

