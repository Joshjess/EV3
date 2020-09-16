//
// Created by mohamedelh on 16-9-2020.
//

#include "DistanceChecker.h"
#include "../ev3dev.h"

using namespace ev3dev;
using namespace std;

DistanceChecker::DistanceChecker(float border, string usedMeasurementUnit) {
    this->border = border;
    this->measurementUnit = usedMeasurementUnit;
    this->sensor = ultrasonic_sensor();
}

bool DistanceChecker::checkIfReachObject() {
    if (measurementUnit.compare(CM_UNIT) == 0) {
        printf("Measured in CM: %f", sensor.distance_centimeters());
        if (sensor.distance_centimeters() < border) {
            printf("Too close!")
            return true;
        }
    } else if (measurementUnit.compare(INCH_UNIT) == 0) {
        printf("Measured in INCH: %f", sensor.distance_inches());
        if (sensor.distance_inches()  < border) {
            printf("Too close!")
            return true;
        }
    } else {
        printf("No valid measurement unit has been specified! Choose between CM_UNIT and INCH_UNIT")
    }
}