#ifndef _Separation_
#define _Separation_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <cstdint>

using namespace std;

class Separation{
protected :
	uint32_t scale;
	int passage;

public :
	Separation(const uint32_t mScale);

	~Separation();

    void execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif