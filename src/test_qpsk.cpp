
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <ctime>
#include <cstdint>

//#include "./vector/vectorclass.h"

#include "./Processing/Sampling/Up/UpSampling.hpp"
#include "./Processing/Sampling/Down/DownSampling.hpp"
#include "./Processing/QPSK/mod/QPSK_mod.hpp"
#include "./Frame/FrameTools.hpp"


#define MY_SQR(a) (((int32_t)a)*((int32_t)a))


int main(int argc, char *argv[])
{

#if 1
    int Nb = 16;
    int Ns = Nb/2;

    string B = "0100110101001110";

    vector<int8_t> S(Ns);

    dump_payload( (uint8_t*)B.data(), B.size(), 128 );
    printf("\n");
    printf("\n");

    QPSK_mod B_S(2);
    B_S.execute(B,S, Ns, 2);
    dump_payload( (uint8_t*)S.data(), S.size(), 128 );
    printf("\n");
    printf("\n");

    vector<int8_t> C(20*Ns);


    UpSampling mod_up(20);
    mod_up.execute( S, C );

    dump_payload( (uint8_t*)C.data(), C.size(), 128 );
    printf("\n");
    printf("\n");

    
#endif

    return 0;
}