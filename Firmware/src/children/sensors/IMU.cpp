#include <Arduino.h>
#include "IMU.h"
#include <Adafruit_BNO08x.h>

#define datadelay 100
#define gravityaccel 9.81
#define gtolerance 3 
#define acceltolerance 0.2


IMU::IMU(ErrorHandler* errHand){
    lastDataTime = 0;
    _errHand = errHand;
}

bool IMU::imuBegin(){
    if(bno08x->begin_I2C()){
        lastDataTime = millis();

        if (!bno08x->enableReport(SH2_LINEAR_ACCELERATION)) {
            Serial.println("Could not enable Linear Acceleration");
        }

        if (!bno08x->enableReport(SH2_ROTATION_VECTOR)) {
            Serial.println("Could not enable rotation vector");
        }

        return true;
    } else {
        Serial.print("Failure finding chip");
        _errHand->raiseError(states::imu);
        }
    return false;
}

void IMU::updateData(){
    if(millis()-lastDataTime >= datadelay){
        if (!bno08x->getSensorEvent(&sensorValue)) {
            Serial.println("could not update values");
            _errHand->raiseError(states::imu);
        }

    }
}

bool IMU::highGEvent(){
    if((pow(pow(sensorValue.un.linearAcceleration.x,2) + pow(sensorValue.un.linearAcceleration.y, 2) + pow(sensorValue.un.linearAcceleration.z, 2), 0.5)) >= gtolerance*gravityaccel){
        return true;
    } else {
        return false;
    }
}

void IMU::getOrientation(float* orientationArr){
    *orientationArr = sensorValue.un.rotationVector.i;
    orientationArr++;
    *orientationArr = sensorValue.un.rotationVector.j;
    orientationArr++;
    *orientationArr = sensorValue.un.rotationVector.k;
}


//checks stationary just with acceleration, could implement gyroscope check if needed
bool IMU::isStationary(){
    if(sensorValue.un.linearAcceleration.x<acceltolerance&&sensorValue.un.linearAcceleration.y<acceltolerance&&sensorValue.un.linearAcceleration.z<acceltolerance){
        return true;
    } 
    return false;
}