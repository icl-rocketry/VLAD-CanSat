#include <Arduino.h>
#include <barom.h>
#include "BMP388_DEV.h"

BMP388_DEV bmp388;
uint8_t altitude;

uint8_t getAltitude() {
    if(bmp388.getAltitude(altitude)) {
        return altitude;
    }
}

bool startDetection() {
    if(bmp388.begin()){
        return true;
    }
}

bool hasLanded() {
    //not entirely sure how to do this might have to get called multiple times or use a millis and a variable for previous change
}
