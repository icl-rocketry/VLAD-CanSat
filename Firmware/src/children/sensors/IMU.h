/*
high-g event detection (launch, landing)
Provide orientation detection
check for stationary
kyril
BN0055
*/

#include <Arduino.h>
#include <MPU6050.h>
#include "I2Cdev.h"
#include "../errorHandling.h"
#include <Wire.h>


#ifndef IMU_H
#define IMU_H

class IMU {
    public:
        bool dmpReady = false;  // set true if DMP init was successful
        uint8_t devStatus;      // return status after each device operation (0 = success, !0 = error)
        uint8_t fifoBuffer[64]; // FIFO storage buffer
        
        IMU(ErrorHandler* errHand);
        MPU6050 mpu;
        uint32_t lastDataTime;
        
        bool imuBegin();
        void updateData();
        bool highGEvent();
        void getOrientation(float* orientationArr);
        bool isStationary();
    private:

        ErrorHandler* _errHand;
        TwoWire wireObj;
};

#endif
