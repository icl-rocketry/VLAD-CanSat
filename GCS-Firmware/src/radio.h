// Collects and sends data to GCS
// Receive commands from GCS for spike

#ifndef RADIO_H
#define RADIO_H

// Define the meaning of different received commands
#define ARM_COMMAND 0x01
#define FIRE_COMMAND 0x02
#define TELEMETRY_COMMAND 0x03

#define telemetryPacketLength 21

#include <Arduino.h>
#include <LoRa.h>
#include <SPI.h>
#include <array>
#include <vector>
#include <pinDefinitions.h>
#include <commands.h>

// Telemetry packet struct
struct telemetry_t{
    uint8_t systemState;
    float altitude;
    float orientations[3];
    uint32_t systemTime;
}__attribute__((__packed__)); 

class radio {
    public:
        radio();
        bool setup();
        void update();
        telemetry_t getPacket();
        bool messageAvailable;
        void sendCommand(Command commandToSend);
       
    private:
        void checkIncomming();
        void checkSendBuffer();
        void checkTx();

        std::vector<uint8_t> _sendBuffer;
        bool _txDone;
        uint16_t msgCount;
        telemetry_t _incomingPacket;
};

#endif
