#ifndef SERIAL_INTERFACE_H
#define SERIAL_INTERFACE_H

#define SERIAL_SPEED 115200

#include <Arduino.h>
#include <commands.h>
#include "radio.h"

class serialInterface {
    public:
        void begin();
        void printTelemetry(telemetry_t telemetry);
        void update();

    private:
        void inputCheck();
};

#endif