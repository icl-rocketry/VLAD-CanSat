#include <Arduino.h>
#include "IMU.h"

#define datadelay 100
#define gravityaccel 9.81
#define gtolerance 3 
#define acceltolerance 0.2


IMU::IMU(ErrorHandler* errHand):
wireObj(0)
{
    devStatus = 1;
    lastDataTime = 0;
    _errHand = errHand;
}

bool IMU::imuBegin(){
    // Initialise Wire on the correct pins
    wireObj.begin(SDA_PIN, SCL_PIN);
    mpu.initialize();
    Serial.println(mpu.testConnection() ? F("MPU6050 connection successful") : F("MPU6050 connection failed"));
    devStatus = mpu.dmpInitialize();
    mpu.setXGyroOffset(220);
    mpu.setYGyroOffset(76);
    mpu.setZGyroOffset(-85);
    mpu.setXAccelOffset(1788); // 1688 factory default for my test chip
    mpu.setYAccelOffset(1788); // 1688 factory default for my test chip
    mpu.setZAccelOffset(1788); // 1688 factory default for my test chip

    // Calibration Time: generate offsets and calibrate our MPU6050
    mpu.CalibrateAccel(6);
    mpu.CalibrateGyro(6);

    // turn on the DMP, now that it's ready
    dmpReady = true;
    if (devStatus == 0){
        mpu.setDMPEnabled(true);
    }
    return true;
}

void IMU::updateData(){
    if(!dmpReady) return;
    if (millis()-lastDataTime >= datadelay){
        lastDataTime = millis();
        if(mpu.dmpGetCurrentFIFOPacket(fifoBuffer)){
            return;
        } 
    }
    Serial.println('couldnt update data ');
}

bool IMU::highGEvent(){
    mpu.dmpGetLinearAccel(&aaReal, &aa, &gravity);
    //aaReal.x aaReal.y aaReal.z
    if (pow(pow(aaReal.x,2)+pow(aaReal.y,2)+pow(aaReal.z, 2), 0.5) >= gravityaccel*gtolerance){
        return true;
    }
    return false;
}

void IMU::getOrientation(float* orientationArr){
    mpu.dmpGetQuaternion(&q, fifoBuffer);
    //q.w q.x q.y q.z
    *orientationArr = q.w;
    orientationArr++;
    *orientationArr = q.x;
    orientationArr++;
    *orientationArr = q.y;
    orientationArr++;
    *orientationArr = q.z;
}



bool IMU::isStationary(){
    mpu.dmpGetLinearAccel(&aaReal, &aa, &gravity);
    //aaReal.x aaReal.y aaReal.z
    if (aaReal.x<acceltolerance&&aaReal.y<acceltolerance&&aaReal.z<acceltolerance){
        return true;
    }
    return false;
}
