// Collects and sends data to GCS
// Receive commands from GCS for spike

#ifndef RADIO_H
#define RADIO_H

#include <Arduino.h>
#include <LoRa.h>

class radio {
    public:
        bool begin();
        void update();
        bool spikeCommandReceived;

    private:
        void sendTelemetry();
}

#endif