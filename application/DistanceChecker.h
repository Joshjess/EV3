//
// Created by mohamedelh on 16-9-2020.
//
#include "../ev3dev.h"
#ifndef EV3_DISTANCECHECKER_H
#define EV3_DISTANCECHECKER_H
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
