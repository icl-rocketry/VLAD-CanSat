// provide altitude, from pressure and temperature
// provide landing detection (launch detection?)
// Kyril
//BMP388
#include <Arduino.h>
#include "BMP388_DEV.h"

#ifndef BAROM_H
#define BAROM_H
class barom {
    public:
        barom();
        BMP388_DEV bmp388;
        uint8_t altitude;
        uint8_t lastHasLandedTimeCheck;
        uint8_t altitudemeasurements[30];

        //start detection
        bool startDetection();

        //gives the altitude
        uint8_t getAltitude();

        //detects landing through changes in altitude not changine
        bool hasLanded();
}
