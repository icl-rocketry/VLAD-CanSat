#include <Arduino.h>
#include <IMU.h>
#include "Adafruit_Sensor.h"
#include "Adafruit_BNO055.h"

#define datadelay = 100
#define gravityaccel = (3.14^2)
#define gtolerance = 3 
#define acceltolerance = 0.2


IMU::IMU(){
    Adafruit_BNO055 bno = Adafruit_BNO055(, 0x28) //needs first input not sure what it is
    uint8_t lastDataTime = 0;

    sensors_event_t lastOrientData, lastAccelData
}

bool imuBegin(){
    if(bno.begin()){
        lastDataTime = millis();
        return true;
    } else {
        Serial.print('error starting BNO');
        return false;
        }
}

void IMU::updateData(){
    if(millis()-lastDataTime >= datadelay){
        bno.getEvent(&lastOrientData, Adafruit_BNO055::VECTOR_EULER);
        bno.getEvent(&lastAccelData, Adafruit_BNO055::VECTOR_LINEARACCEL);
    }
}

bool IMU::highGEvent(){
    if(((lastAccelData.acceleration.x^2+lastAccelData.acceleration.y^2+lastAccelData.acceleration.z^2)^0.5) >= gtolerance*gravityaccel){
        return true;
    } else {
        return false;
    }
}

uint8_t[] IMU::getOrientation(){
    return [lastOrientData.orientation.x, lastOrientData.orientation.y, lastOrientData.z]
}

//checks stationary just with acceleration, could implement gyroscope check if needed
bool IMU::isStationary(){
    if(lastAccelData.acceleration.x<acceltolerance&&lastAccelData.acceleration.y<acceltolerance&&lastAccelData.acceleration.y<acceltolerance){
        return true;
    } else {
        return false;
        }
}