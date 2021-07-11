#include "radio.h"
#include <LoRa.h>
#include <SPI.h>
#include <Arduino.h>
#include <vector>

radio::radio():
    messageAvailable(false),
    _txDone(false)
{}

bool radio::setup() {
    // Code to be run at setup

    LoRa.setPins(RADIO_CS, RADIO_RESET, RADIO_IRQ);

    // Returns true if initialised succesfully, false otherwise
    return LoRa.begin(868E6);
}

void radio::update() {
    // Code to be run every loop

    checkIncomming();
    checkSendBuffer();
    checkTx();
}

void radio::checkIncomming(){
        // Check if the radio is currently transmitting, and abort if it is
    if (!_txDone) {
        return;
    }

    // Check if there's a new packet incoming
    int packetSize = LoRa.parsePacket();

    if (packetSize != 0) {
        // Set flag
        messageAvailable = true;
        // Read the entire packet
        LoRa.readBytes((uint8_t*)&_incomingPacket, packetSize);
    }
}

void radio::sendCommand(Command commandToSend) {
    // Sends data to GCS over LoRa
    uint8_t command;
    switch (commandToSend)
    {
    case Command::sendTelemetry:
        command = TELEMETRY_COMMAND;
        Serial.println("Sent Telemetry Command");
        break;
    
    case Command::armSpike:
        command = ARM_COMMAND;
        Serial.println("Sent Spike Command");
        break;

    case Command::fireSpike:
        command = FIRE_COMMAND;
        Serial.println("Sent Fire Command");
        break;
    default:
        command = TELEMETRY_COMMAND;
        break;
    }

     // copies telemetry into packet bufffer
    _sendBuffer.push_back(command);
    msgCount++;
}


void radio::checkSendBuffer(){

    if (!(_sendBuffer.size() > 0)){
        return; // exit if nothing in the buffer
    }

    // check if radio is busy, if it isnt then send next packet
    if(LoRa.beginPacket()){ 
        uint8_t packet = _sendBuffer.front();
        LoRa.write(packet);
        LoRa.endPacket(true); // asynchronous send 
        //delete front element of send buffer
        _sendBuffer.erase(_sendBuffer.begin());
        _txDone = false;
    }
}

void radio::checkTx(){
    if (_txDone){
        return;
    }
    if (!LoRa.isTransmitting()){
        _txDone = true;
    }
}

telemetry_t radio::getPacket() {
    messageAvailable = false;
    return _incomingPacket;
}