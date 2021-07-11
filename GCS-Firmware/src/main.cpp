// GCS Firmware for VLAD
#include <Arduino.h>
#include "radio.h"
#include "serialInterface.h"

radio CanRad;
serialInterface serInt(&CanRad);

void setup() {
    CanRad.setup();
    serInt.begin();
}

void loop() {
    CanRad.update();
    serInt.update();
    delay(10);
}