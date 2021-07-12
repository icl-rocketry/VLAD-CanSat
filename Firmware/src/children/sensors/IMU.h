/*
high-g event detection (launch, landing)
Provide orientation detection
check for stationary
kyril
BN0055
*/

#include <Arduino.h>
#include <Adafruit_BNO08x.h>
#include "../errorHandling.h"


#ifndef IMU_H
#define IMU_H

class IMU {
    public:

        IMU(ErrorHandler* errHand);
        Adafruit_BNO08x * bno08x;
        ErrorHandler* _errHand;
        sh2_SensorValue_t sensorValue;
        uint32_t lastDataTime;
        

        bool imuBegin();
        void updateData();
        bool highGEvent();
        void getOrientation(float* orientationArr);
        bool isStationary();
};

#endif
