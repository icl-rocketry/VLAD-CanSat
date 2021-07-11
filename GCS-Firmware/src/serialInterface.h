#ifndef SERIAL_INTERFACE_H
#define SERIAL_INTERFACE_H

#define SERIAL_SPEED 115200

#define SEND_TELEMETRY_ID 0
#define ARM_SPIKE_ID 1
#define FIRE_SPIKE_ID 2

#include <Arduino.h>
#include "radio.h"
#include <commands.h>

class serialInterface {
    public:
        serialInterface(radio* RadioGCS);
        void begin();
        void update();

    private:
        void printTelemetry(telemetry_t telemetry);
        bool inputCheck();
        Command next_command;
        radio* _RadioGCS;
};

#endif