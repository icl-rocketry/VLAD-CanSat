// GCS Firmware for VLAD
#include <Arduino.h>
#include "radio.h"
#include "serialInterface.h"
#include "WiFiInterface.h"

radio CanRad;
serialInterface serInt(&CanRad);
WiFiInterface wifiInt(&CanRad);

void setup() {
    CanRad.setup();
    serInt.begin();
    wifiInt.setupWIFI();
}

void loop() {
    CanRad.update();
    serInt.update();
    wifiInt.WIFIloop();
    delay(10);
}