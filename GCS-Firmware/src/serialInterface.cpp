#include "serialInterface.h"

serialInterface::serialInterface(radio* RadioGCS) {
    _RadioGCS = RadioGCS;
}

void serialInterface::begin() {
    Serial.begin(SERIAL_SPEED);
    Serial.println("Welcome to the fancy pancy serial interface.");
    Serial.println("Oh look, a bar to separate to make it look good:");
    Serial.println("***************************************************************");
}

void serialInterface::update() {
    if (inputCheck()) {
        _RadioGCS -> sendCommand(next_command);
    }
    if (_RadioGCS->messageAvailable) {
        printTelemetry(_RadioGCS -> getPacket());
    }
}

bool serialInterface::inputCheck() {
    // Check if there is a new output to serial
    if(Serial.available()) {
        int commandID = Serial.parseInt();

        // Convert the command to enum
        switch (commandID) {
            case FIRE_SPIKE_ID:
                next_command = Command::fireSpike;
                break;

            case ARM_SPIKE_ID:
                next_command = Command::armSpike;
                break;

            case SEND_TELEMETRY_ID:
                next_command = Command::sendTelemetry;
                break;

            case 0: // Catch the newline at the end
                return false;

            default:
                Serial.println("Command not recognised");
                return false;              
        }
        return true;
    }
    return false;
}

void serialInterface::printTelemetry(telemetry_t telemetry) {
    Serial.print(telemetry.systemState);
    Serial.print("  ");
    Serial.print(telemetry.altitude);
    Serial.print("  ");
    Serial.print(telemetry.orientations[1]);
    Serial.print("  ");
    Serial.print(telemetry.orientations[2]);
    Serial.print("  ");
    Serial.println(telemetry.orientations[3]);
    Serial.print("  ");
    Serial.println(telemetry.orientations[4]);
    Serial.print("  ");
    Serial.println(telemetry.systemTime);
}