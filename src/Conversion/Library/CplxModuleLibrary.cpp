#include "CplxModuleLibrary.hpp"

#include "../INTER_x86/CplxModule_x86.hpp"
#include "../INTER_AVX2/CplxModule_AVX2.hpp"
#include "../INTER_NEON/CplxModule_NEON.hpp"

CplxModuleLibrary::CplxModuleLibrary()
{

}


CplxModuleLibrary::~CplxModuleLibrary()
{

}

Conversion* CplxModuleLibrary::allocate(Parameters& param)
{
    Conversion* conv;
    if( param.toString("mode_conv") == "scalar" ){
        conv = new CplxModule_x86();
    } else if( param.toString("mode_conv") == "AVX2" ) {
        conv = new CplxModule_AVX2();
    } else if( param.toString("mode_conv") == "NEON" ) {
        conv = new CplxModule_NEON();
    }
    else
    {
        std::cout << "(EE) Le type de module de Conversion demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_conv")                                     << std::endl;
        exit( -1 );
    }
    return conv;
}
