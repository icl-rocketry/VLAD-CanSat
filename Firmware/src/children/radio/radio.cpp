#include "radio.h"
#include <LoRa.h>
#include <SPI.h>
#include <Arduino.h>
#include <vector>

radio::radio(barom* bmp388, IMU* bno, ErrorHandler* errHand):
spikeFire(false),
spikeArmed(false),
_txDone(false),
_errHand(errHand),
_bmp(bmp388),
_bno(bno)
{}

void radio::setup() {
    // Code to be run at setup

    // Set initial value of spike fire state to 0
    spikeArmed = 0;
    spikeFire = 0;

    LoRa.setPins(RADIO_CS, RADIO_RESET, RADIO_IRQ);

    // Initialise LoRa
    if (!LoRa.begin(868E6)) {
        _errHand->raiseError(states::Radio);
    }
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
        // Read the header

        // Read and then parse the command
        parseCommand(LoRa.read());
    }

    // reset spikeFire to false if its not been armed
    if (spikeArmed == false) {
        spikeFire = false;
    }
}

void radio::sendTelemetry() {
    // Sends data to GCS over LoRa
   updateTelemetry();
    _sendBuffer.push_back(telemetryPacket); // copies telemetry into packet bufffer

    msgCount++;
}


void radio::checkSendBuffer(){

    if (!(_sendBuffer.size() > 0)){
        return; // exit if nothing in the buffer
    }

    // check if radio is busy, if it isnt then send next packet
    if(LoRa.beginPacket()){ 
        telemetry_t packet = _sendBuffer.front();
        LoRa.write((uint8_t*)&packet, telemetryPacketLength);
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


void radio::parseCommand(uint8_t command) {
    // Function that updates the spike variables based on the received command

    switch (command) {
        case TELEMETRY_COMMAND:
            sendTelemetry();
            break;

        case ARM_COMMAND:
            // update the corresponding variable
            spikeArmed = true;
            break;

        case FIRE_COMMAND:
            // update the corresponding variable
            spikeFire = true;
            break;

        default:
            // Poorly formatted command received!
            break;
    }
    
}

void radio::updateTelemetry() {
    telemetryPacket.systemState = _errHand->get_state();
    telemetryPacket.altitude = _bmp->getAltitude();
    _bno->getOrientation(&telemetryPacket.orientations[0]);
    telemetryPacket.systemTime = millis();
}