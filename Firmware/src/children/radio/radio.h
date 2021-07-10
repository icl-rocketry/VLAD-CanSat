// Collects and sends data to GCS
// Receive commands from GCS for spike

#ifndef RADIO_H
#define RADIO_H

// Define the meaning of different received commands
#define ARM_COMMAND 0x01
#define FIRE_COMMAND 0x02
#define TELEMETRY_COMMAND 0x03

#define telemetryPacketLength 18

#include <Arduino.h>
#include <LoRa.h>
#include <SPI.h>
#include <array>
#include <vector>

// Telemetry packet struct
struct telemetry_t{
    uint16_t systemState;
    float altitude;
    float orientations[3];
    
}__attribute__((__packed__)); 

class radio {
    public:
        radio();
        bool setup();
        void update();

        bool spikeFire;
        bool spikeArmed;

        telemetry_t telemetryPacket;
       

    private:
        void sendTelemetry();
        void parseCommand(uint8_t command);
        void checkIncomming();
        void checkSendBuffer();
        void checkTx();

        std::vector<telemetry_t> _sendBuffer;
        bool _txDone;
        uint16_t msgCount;
};

#endif
