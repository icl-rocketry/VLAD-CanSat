#include <Arduino.h>
#include "barom.h"
#include "BMP388_DEV.h"

#define numberofmeasurements 10
#define timestandby 80
#define altitudetolerance 3
barom::barom(ErrorHandler* errHand) {
    FIFOenabled = false;
    lastHasLandedTimeCheck = 0;
    _errHand = errHand;
    //starts storage of data, could put this in the hasLanded loop and run it once.
}

bool barom::baromBegin(){
    if(bmp388.begin()){
        bmp388.startNormalConversion();
        bmp388.setTimeStandby(TIME_STANDBY_80MS);
        bmp388.disableFIFO();
        //doesnt have 100ms standby
        return true;
    } else {
        Serial.println('Errror starting bmp388');
        _errHand->raiseError(states::Baro);
        return false;
    }
}

float barom::getAltitude() {
    if(bmp388.getAltitude(altitude)) {
        return altitude;
    } else {
        Serial.print('Error getting altitude');
        _errHand->raiseError(states::Baro);
        return 0;
    }
}


bool barom::hasLanded() {
    if (FIFOenabled == false){
        bmp388.enableFIFO(PRESS_DISABLED,ALT_ENABLED,TIME_DISABLED,SUBSAMPLING_OFF,FILTERED,STOP_ON_FULL_DISABLED);
        bmp388.setFIFONoOfMeasurements(numberofmeasurements);
        FIFOenabled = true;
    }

    // Variable to be overwritten by getFIFOData for temperature and pressure, as we dont care about them


    
    if ((millis()-lastHasLandedTimeCheck)>((numberofmeasurements+1)*timestandby)){
        lastHasLandedTimeCheck = millis();
        float dummyVar[numberofmeasurements];
        uint32_t dummyTime;
        /*
        // this checks all measurements for a difference in 3m
        if(bmp388.getFIFOData(&dummyVar, &dummyVar, &altitudemeasurements, &sensorTime)){
            // Loop through all measurements
            for (uint8_t i = 0, i < numberofmeasurements, i++){
                for (uint8_t j = 0, j<i, j++){
                    if(abs(altitudemeasurements[j]-altitudemeasurements[i])>altitudetolerance){ 
                        return false;
                    }
                }
            }
            return true;
        }
        */

        // this checks only the 5th and last, less run time, less certain probably
        if(bmp388.getFIFOData(dummyVar, dummyVar, altitudemeasurements, dummyTime)){
            if(abs(altitudemeasurements[numberofmeasurements-1]-altitudemeasurements[5])<altitudetolerance){
                return true;
            }
        }
        
    }
    return false;
}
