#include "radio.h"
#include <LoRa.h>
#include <SPI.h>
#include <Arduino.h>

radio::radio() {
    // Set initial value of spike fire state to 0
    spikeArmed = 0;
    spikeFire = 0;
}

bool radio::setup() {
    // Code to be run at setup

    LoRa.setPins(RADIO_CS, RADIO_RESET, RADIO_IRQ);

    // Returns true if initialised succesfully, false otherwise
    return LoRa.begin(868E6);
}

void radio::update() {
    // Code to be run every loop

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

void radio::sendTelemetry(uint16_t systemState, uint8_t altitude, float_t accel_x, float_t accel_y, float_t accel_z) {
    // Sends data to GCS over LoRa
    
    // Serialise the data
    LoRa.beginPacket();                   // start packet
    LoRa.write(msgCount);                 // add message ID
    LoRa.write(outgoing.length());        // add payload length
    LoRa.print(outgoing);                 // add payload
    LoRa.endPacket();                     // finish packet and send it

  msgCount++;
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
