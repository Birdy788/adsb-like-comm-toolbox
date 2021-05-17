#ifndef _QPSK_mod_
#define _QPSK_mod_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <complex>


using namespace std;

class QPSK_mod{
protected :
	int8_t scale;

public :
    QPSK_mod(const int8_t mScale);

	~QPSK_mod();

    void execute(string bits,std::vector<int8_t>& symboles, int Ns, int n_b);
};

#endif
