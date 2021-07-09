// Collects and sends data to GCS
// Receive commands from GCS for spike

#ifndef RADIO_H
#define RADIO_H

// Define the meaning of different received commands
#define ARM_COMMAND 0x01;
#define FIRE_COMMAND 0x02;
#define TELEMETRY_COMMAND 0x03;

#include <Arduino.h>
#include <LoRa.h>
#include <SPI.h>

class radio {
    public:
        radio();
        bool setup();
        void update();

        bool spikeFire;
        bool spikeArmed;

    private:
        void sendTelemetry(uint16_t systemState, uint8_t altitude, float_t accel_x, float_t accel_y, float_t accel_z);
        void parseCommand(uint8_t command);

        uint16_t msgCount;
};

#endif
