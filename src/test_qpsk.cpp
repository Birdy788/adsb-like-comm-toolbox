
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

#include "./Frame/FrameTools.hpp"


#define MY_SQR(a) (((int32_t)a)*((int32_t)a))


int main(int argc, char *argv[])
{

#if 1
    vector<int8_t> A(10);

    for(uint32_t i = 0; i < A.size(); i += 1)
        A[i] = i;

    vector<int8_t> B(20);

    dump_payload( (uint8_t*)A.data(), A.size(), 128 );
    printf("\n");
    printf("\n");


    UpSampling mod_up(2);
    mod_up.execute( A, B );

    dump_payload( (uint8_t*)B.data(), B.size(), 128 );
    printf("\n");
    printf("\n");

    
#endif

    return 0;
}