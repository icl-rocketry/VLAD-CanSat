// GCS Firmware for VLAD
#include <Arduino.h>
#include "radio.h"

radio CanRad;

void setup() {
    Serial.begin(115200);
    CanRad.begin();
}

void loop() {
    CanRad.update();
}