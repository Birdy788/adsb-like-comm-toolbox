#ifndef _DownSampling_
#define _DownSampling_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class DownSampling{
protected :
	uint32_t scale;

public :
	DownSampling(const uint32_t mScale);

	~DownSampling();

    void execute(std::vector<float >& ibuffer, std::vector<float >& obuffer);
    void execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif