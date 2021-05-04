#include "Separation.hpp"


Separation::Separation(const uint32_t mScale)
{
    scale = mScale;
    passage = 0;
}


Separation::~Separation()
{
	
}

void Separation::execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer)
{
	// Le buffer de sortie doit etre 2x plus petit...
    if( obuffer.size() != (1/scale * ibuffer.size()) )
    {
        printf("\x1B[33m(WW) vector size was updated in Separation(%s::%d)\x1B[0m\n", __FILE__, __LINE__);
        printf("\x1B[33m(WW) -> ibuffer.size() = %lu\x1B[0m\n", ibuffer.size());
        printf("\x1B[33m(WW) -> obuffer.size() = %lu\x1B[0m\n", obuffer.size());
        obuffer.resize(scale * ibuffer.size());
    }

    const uint32_t ll = obuffer.size();
    if(passage == 0)
    {
        for(uint32_t i = 0 ; i < ll; i += 1)
        {
            obuffer[i] = ibuffer[i];
        }
        passage = 1;
    }

    if(passage == 1)
    {
        for(uint32_t i = 0 ; i < ll; i += 1)
        {
            obuffer[i] = ibuffer[ll/scale+i];
        }
        passage = 0;
    }
}
