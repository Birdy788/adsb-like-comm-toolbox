#include "Conversion.hpp"

class ConversionAVX2 : public Conversion
{
	void execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out);
};