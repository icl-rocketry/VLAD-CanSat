// Collects and sends data to GCS
// Receive commands from GCS for spike

#ifndef RADIO_H
#define RADIO_H

// Define the meaning of different received commands
#define ARM_COMMAND 0x01
#define FIRE_COMMAND 0x02
#define TELEMETRY_COMMAND 0x03

#define telemetryPacketLength 25

#define RESPONSE_DELAY 1000 // Wait before response in ms

#include <Arduino.h>
#include <LoRa.h>
#include <SPI.h>
#include <array>
#include <vector>
#include <pinDefinitions.h>
#include "../errorHandling.h"
#include "../sensors/barom.h"
#include "../sensors/IMU.h"

// Telemetry packet struct
struct telemetry_t{
    uint8_t systemState;
    float altitude;
    float orientations[4];
    uint32_t systemTime;
}__attribute__((__packed__)); 

class radio {
    public:
        radio(barom* bmp388, IMU* bno, ErrorHandler* errHand);
        void setup();
        void update();

        bool spikeFire;
        bool spikeArmed;

        telemetry_t telemetryPacket;
       void sendTelemetry();

    private:
        void parseCommand(uint8_t command);
        void checkIncomming();
        void checkSendBuffer();
        void checkTx();
        void updateTelemetry();

        std::vector<telemetry_t> _sendBuffer;
        bool _txDone;
        uint16_t msgCount;
        ErrorHandler* _errHand;
        barom* _bmp;
        IMU* _bno;
        uint32_t response_time;
};

#endif
