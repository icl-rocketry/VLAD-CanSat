#include <Arduino.h>
#include <barom.h>
#include "BMP388_DEV.h"

#define numberofmeasurements 10
#define timestandby 80
#define altitudetolerance 3
barom::barom() {
    BMP388_DEV bmp388;
    uint8_t altitude;
    bool FIFOenabled = false;
    uint8_t altitudemeasurements[numberofmeasurements];
    uint8_t lastHasLandedTimeCheck = 0;
    //starts storage of data, could put this in the hasLanded loop and run it once.
}

bool barom::baromBegin(){
    if(bmp388.begin()){
        bmp388.startNormalConversion();
        bmp388.setTimeStandby(TIME_STANDBY_80MS);
        bmp488.disableFIFO();
        //doesnt have 100ms standby
        return true;
    } else {
        Serial.println('Errror starting bmp388');
        return false;
    }
}
uint8_t barom::getAltitude() {
    if(bmp388.getAltitude(altitude)) {
        return altitude;
    } else {Serial.print('Error getting altitude');}
}


bool barom::hasLanded() {
    if (FIFOenabled == false){
        bmp388.enableFIFO(PRESS_DISABLED,ALT_ENABLED,TIME_DISABLED,SUBSAMPLING_OFF,FILTERED,STOP_ON_FULL_DISABLED);
        bmp388.setFIFONoOfMeasurements(numberofmeasurements);
        FIFOenabled = true;
    }
    if ((millis()-lastHasLandedTimeCheck)>((numberofmeasurements+1)*timestandby)){
        lastHasLandedTimeCheck = millis();
        /*
        // this checks all measurements for a difference in 3m
        if(bmp388.getFIFOData(temperature, pressure, altitudemeasurements, sensorTime)){ //have to change to not have those inputs
            for (uint8_t i = 0, i < numberofmeasurements, i++){
                for (uint8_t j = 0, j<i, j++){
                    if(abs(altitudemeasurements[j]-altitudemeasurements[i])>altitudetolerance){ 
                        return false;
                    }
                }
            }
            return true;
        }
        // this checks only the first and last, less run time, less certain probably
            if(bmp388.getFIFOData(temperature, pressure, altitudemeasurements, sensorTime)){ //have to change to not have those inputs
                if(abs(altitudemeasurements[numberofmeasurements-1]-altitudemeasurements[0])>altitudetolerance){
                    return false;
                }
                return true;
            }
        */
    }
}
