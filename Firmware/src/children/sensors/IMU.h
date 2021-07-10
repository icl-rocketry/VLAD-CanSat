/*
high-g event detection (launch, landing)
Provide orientation detection
check for stationary
kyril
BN0055
*/

#include <Arduino.h>
#include "Adafruit_BNO08x.h"


#ifndef IMU_H
#define IMU_H

class IMU {
    public:

        IMU();
        Adafruit_BNO08x bno08x;
        sh2_SensorValue_t sensorValue;
        uint8_t lastDataTime;
        

        bool imuBegin();
        void updateData();
        bool highGEvent();
        //uint8_t[] getOrientation();
        bool isStationary();
};

#endif
