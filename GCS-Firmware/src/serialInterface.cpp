#include "serialInterface.h"

void serialInterface::begin() {
    Serial.begin(SERIAL_SPEED);
    Serial.println("Welcome to the fancy pancy serial interface.");
    Serial.println("Oh look, a bar to separate to make it look good:");
    Serial.println("***************************************************************");
}

void serialInterface::update() {
    inputCheck();
    printTelemetry(telemetry_t telemetry);
}

void serialInterface::inputCheck() {

}

void serialInterface::printTelemetry(telemetry_t telemetry) {

}