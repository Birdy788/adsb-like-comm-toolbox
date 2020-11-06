#include "RadioFichierUHD.hpp"


RadioFichierUHD::RadioFichierUHD(std::string filen) : Radio(0, 0)
{
    filename = filen;
}


RadioFichierUHD::~RadioFichierUHD()
{

}

inline int getnum(char* line, char** real, char** img)
{
    *real = strtok(line, " \n");
    if(*real == NULL) *real = "0";
    *img = strtok(NULL, "\n");
    if (*img == NULL) *img = "0";
    return 0;
}

void RadioFichierUHD::initialize()
{
    FILE* stream = fopen(filename.c_str(), "r");
    float vmin = +10000000;
    float vmax = -10000000;
    if (stream == NULL){
        fprintf(stderr, "RadioFichier::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }
    char line       [256];
    char* buffer_real;
    char* buffer_imag;

    while ( fgets(line, 1024, stream)){
        getnum(line, &buffer_real, &buffer_imag);
        float breal = strtof(buffer_real, NULL);  //conv char* => float
        float bimag = strtof(buffer_imag, NULL);
        vmin = vmin < breal ? vmin : breal;
        vmin = vmin < bimag ? vmin : bimag;
        vmax = vmax > breal ? vmax : breal;
        vmax = vmax > bimag ? vmax : bimag;
        data.push_back(complex<float>(breal, bimag));
    }

    //
#if 0
    float*  ptr = (float*)data.data();
    int8_t* rtp = new int8_t[2 * data.size()];
    float scale = 120.0f / fmax( fabs(vmin), fabs(vmax) );
    for(int i=0; i< (2*data.size()); i+=1)
        rtp[i] = ptr[i] * scale;
    FILE* f = fopen("data.raw", "w");
    fwrite(rtp, 1, 2 * data.size(), f);
    fclose(f);
#endif
    //

    printf("vmin = %f\n", vmin);
    printf("vmax = %f\n", vmax);

    fclose(stream);
}


void RadioFichierUHD::reception( std::vector< std::complex<float> >& cbuffer)
{

    if( cbuffer.size() != data.size() ) // Nombre de symbols et non d'echantillons
    {
        cbuffer.resize(data.size());
    }

    uint32_t length = data.size();
    for(uint32_t i = 0; i < length; i += 1)
    {
        cbuffer[i] = data[i];
    }
    _alive = false; // On stop le prog
}


void RadioFichierUHD::reset()
{
    fprintf(stderr, "RadioFichier::reset() not implemented yet !\n");
    exit( -1 );
}


void RadioFichierUHD::start_engine()
{

}

void RadioFichierUHD::stop_engine()
{

}