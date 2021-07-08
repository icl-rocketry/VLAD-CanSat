/*
high-g event detection (launch, landing)
Provide orientation detection
check for stationary
kyril
BN0055
*/

#include <Arduino.h>
#include "Adafruit_Sensor.h"
#include "Adafruit_BNO055.h"


#ifndef IMU_H
#define IMU_H

class IMU {
    public:

        IMU();
        Adafruit_BNO055 bno;
        uint8_t lastDataTime;
        sensors_event_t lastOrientData, lastAccelData;
        

        bool imuBegin();
        void updateData();
        bool highGEvent();
        uint8_t[] getOrientation();
        bool isStationary();
}

