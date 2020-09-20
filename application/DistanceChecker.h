//
// Created by mohamedelh on 16-9-2020.
//
#ifndef EV3_DISTANCECHECKER_H
#define EV3_DISTANCECHECKER_H

#include "../ev3dev.h"

#define INCH_UNIT "inch"
#define CM_UNIT "cm"

using namespace ev3dev;
using namespace std;

class DistanceChecker {
public:
    DistanceChecker(float border, string usedMeasurementUnit);
    bool checkIfReachObject();

private:
    string measurementUnit;
    float border;
    ultrasonic_sensor sensor;
};


#endif //EV3_DISTANCECHECKER_H
