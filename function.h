// via http://www.thebigblob.com/tag/libgtest-dev/

#ifndef TEST_H
#define TEST_H

#include <cmath>
 
double squareRoot(const double a) {
    double b = sqrt(a);
    if (b != b) {
        return -1.0;
    } else{
        return sqrt(a);
    }
}

#endif
