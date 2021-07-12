// provide altitude, from pressure and temperature
// provide landing detection (launch detection?)
// Kyril
//BMP388
#include <Arduino.h>
#include "BMP388_DEV.h"
#include "../errorHandling.h"

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
