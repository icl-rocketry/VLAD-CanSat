#include <Arduino.h>
#include <IMU.h>
#include "Adafruit_BNO08x.h"

#define datadelay = 100
#define gravityaccel = (3.14^2)
#define gtolerance = 3 
#define acceltolerance = 0.2


IMU::IMU(){
    Adafruit_BNO08x bno08x(-1);
    uint8_t lastDataTime = 0;
    sh2_SensorValue_t sensorValue;
}

bool imuBegin(){
    if(bno08x.begin_I2C()){
        lastDataTime = millis();
        return true;
    } else {
        Serial.print("Failure finding chip");
        return false;
        }
    if (!bno08x.enableReport(SH2_LINEAR_ACCELERATION)) {
        Serial.println("Could not enable Linear Acceleration");
    }
    if (!bno08x.enableReport(SH2_ROTATION_VECTOR)) {
        Serial.println("Could not enable rotation vector");

}

void IMU::updateData(){
    if(millis()-lastDataTime >= datadelay){
        if (!bno08x.getSensorEvent(&sensorValue)) {
            Serial.println("could not update values")
        }

    }
}

bool IMU::highGEvent(){
    if(((sensorValue.un.linearAcceleration.x^2+sensorValue.un.linearAcceleration.y^2+sensorValue.un.linearAcceleration.z^2)^0.5) >= gtolerance*gravityaccel){
        return true;
    } else {
        return false;
    }
}

uint8_t[] IMU::getOrientation(){
    return [sensorValue.un.rotationVector.i, sensorValue.un.rotationVector.j, sensorValue.un.rotationVector.k]
}

//checks stationary just with acceleration, could implement gyroscope check if needed
bool IMU::isStationary(){
    if(sensorValue.un.linearAcceleration.x<acceltolerance&&sensorValue.un.linearAcceleration.y<acceltolerance&&sensorValue.un.linearAcceleration.z<acceltolerance){
        return true;
    } else {
        return false;
        }
}