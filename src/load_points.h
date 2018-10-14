#ifndef LOAD_POINTS_H
#define LOAD_POINTS_H
#include <iostream>
#include <stdlib.h>
#include <string>
#include <cmath>
#include <vector>
#include <fstream>
#include <algorithm>

struct point { 
        double x,y,z,G;
        int id,I,r,g,b;
    };
typedef std::vector<point> Points;

void load_points(Points *pP, double *pDim);

#endif
