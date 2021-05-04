#ifndef _Frame_
#define _Frame_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <vector>
#include <cstring>
#include <cassert>
#include <iostream>
#include <iomanip>
#include <cstdint>

#include "./MLType/MLType.hpp"
#include "../Processing/CRC32b/CRC/CRC32b.hpp"

using namespace std;

class Frame{
protected:
    vector<uint8_t> header_v;
    vector<uint8_t> config_v;
    vector<uint8_t> payload_v;
    vector<uint8_t> crc_field_v;

    CRC32b crc;
    MLType mlType;

public :
    Frame(const uint32_t n, const uint8_t type = FRAME_INFOS);    // payload size
	~Frame();

    void    set_type(const uint8_t v);
    uint8_t get_type();

    void    set_payload(const std::vector<uint8_t>& v);
    void    get_payload(      std::vector<uint8_t>& v);
    void    clr_payload(                             );

    void    compute_crc ();  // compute the last 24 bits with crc value
    bool    validate_crc();  // check the latest 24 bit values

    void set_special(const uint8_t v);
    uint8_t get_special();

    uint8_t  data    (const uint32_t pos); // a value from the payload
    uint16_t data_u16(const uint32_t pos); // a value from the payload
    uint32_t data_u32(const uint32_t pos); // a value from the payload

    void data    (const uint32_t pos, const int8_t   value); // a value from the payload
    void data_u16(const uint32_t pos, const uint16_t value);
    void data_u32(const uint32_t pos, const uint32_t value);

    uint8_t* header_to_emit();      //
    uint8_t* conf_to_emit();        //
    uint8_t* payload_to_emit();     // the pointer to the payload field
    uint8_t* crc_to_emit();         //

    uint32_t header_size();       // the length of the preambule     in bits
    uint32_t conf_size();         // the length of the configuration in bytes
    uint32_t payload_size();      // set payload size in bytes
    uint32_t crc_size();          // the length of the crc field     in bytes

    void dump_frame();
    std::string to_string();

    void get_frame_bits (std::vector<uint8_t>& v);
    bool fill_frame_bits(const std::vector<uint8_t>& buff);
    uint32_t frame_bits();         // payload size

protected:
//    void set_payload_size(const uint32_t v);  // get payload size in bytes

};

#endif