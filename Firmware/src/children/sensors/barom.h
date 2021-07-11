// provide altitude, from pressure and temperature
// provide landing detection (launch detection?)
// Kyril
//BMP388
#include <Arduino.h>
#include "BMP388_DEV.h"

#ifndef BAROM_H
#define BAROM_H

#define numberofmeasurements 10

class barom {
    public:
        barom();
        BMP388_DEV bmp388;
        bool FIFOenabled;
        float altitude;
        uint32_t lastHasLandedTimeCheck;
        float altitudemeasurements[numberofmeasurements];

        bool baromBegin();
        //gives the altitude
        float getAltitude();

        //detects landing through changes in altitude
        bool hasLanded();
};

#endif
