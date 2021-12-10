#pragma once
#include "Point.h"
#include <iostream>

class Sq
{
public:
    Sq(int x1, int x2, int x3, int x4);
    friend std::ostream &operator<<(std::ostream &out, Sq &square)
    {
        out << "Stop." << std::endl;
        return out;
    }
    ~Sq();

private:
    int f1;
    int f2;
    int f3;
    int f4;
};