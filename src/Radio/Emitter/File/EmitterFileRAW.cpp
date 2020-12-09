#include "EmitterFileRAW.hpp"


EmitterFileRAW::EmitterFileRAW(std::string filen) : Emitter(0, 0)
{
    filename = filen;
    stream   = nullptr;
}


EmitterFileRAW::EmitterFileRAW(Parameters& param) : Emitter(0, 0)
{
    filename = param.toString("filename");
    stream   = nullptr;
}


EmitterFileRAW::~EmitterFileRAW()
{
    if (stream != NULL){
        fclose( stream );
    }
}


void EmitterFileRAW::initialize()
{
    stream = fopen(filename.c_str(), "wb");

    if (stream == nullptr){
        fprintf(stderr, "ReceiverFileRAW::initialize() error during file openning (%s) !\n", filename.c_str());
        exit( -1 );
    }
}


void EmitterFileRAW::start_engine()
{

}


void EmitterFileRAW::stop_engine ()
{

}


void EmitterFileRAW::close()
{
    if (stream == nullptr){
        fprintf(stderr, "ReceiverFileRAW::close() error during file close operation (%s) !\n", filename.c_str());
        exit( -1 );
    }
    if (stream != nullptr){
        fclose( stream );
        stream = nullptr;
    }
}


void EmitterFileRAW::emission( std::vector<int8_t>& cbuffer )
{
#define _STORE_ZERO_
#ifdef  _STORE_ZERO_
    const uint32_t length = cbuffer.size() / 2;
    int8_t* buff = new int8_t[length];
    for(uint32_t i = 0; i < length; i += 1)
        buff[i] = (rand()%3) - 1;
    fwrite(buff, length, sizeof(int8_t), stream);
#endif

    // On genere copie les N données "length" dans le fichier
    fwrite(cbuffer.data(), cbuffer.size(), sizeof(int8_t), stream);

#ifdef _STORE_ZERO_
    for(uint32_t i = 0; i < length; i += 1)
        buff[i] = (rand()%3) - 1;
    fwrite(buff, length, sizeof(int8_t), stream);
    delete[] buff;
#endif
}

void EmitterFileRAW::set_txvga_gain(uint32_t value)
{

}


void EmitterFileRAW::reset()
{
    fprintf(stderr, "ReceiverFileRAW::reset() not implemented yet !\n");
    exit( -1 );
}

