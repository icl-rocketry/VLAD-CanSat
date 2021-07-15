// provide altitude, from pressure and temperature
// provide landing detection (launch detection?)
// Kyril
//BMP388
#include <Arduino.h>
#include <BMP388_DEV.h>
#include "../errorHandling.h"


//mpu6050-master/src/MPU6050_6Axis_MotionApps20.h:619: multiple definition of `MPU6050::dmpGetCurrentFIFOPacket(unsigned char*)'; .
///pio/build/esp32dev/src/children/latchControl.o:/home/linux/document/VLAD-CanSat/Firmware/lib/mpu6050-master/src/MPU6050_6Axis_MotionApps20.h:619: 
//first defined here

#ifndef BAROM_H
#define BAROM_H

#define numberofmeasurements 10

class barom {
    public:
        barom(ErrorHandler* errHand);
        BMP388_DEV bmp388;
        ErrorHandler* _errHand;
        bool FIFOenabled;
        float altitude;
        uint32_t lastHasLandedTimeCheck;
        float altitudemeasurements[numberofmeasurements];

        bool baromBegin();
        bool working = false;
        //gives the altitude
        float getAltitude();

        //detects landing through changes in altitude
        bool hasLanded();
};

#endif
