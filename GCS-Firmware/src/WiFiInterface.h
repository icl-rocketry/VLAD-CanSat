#ifndef WIFIINTERFACE_H
#define WIFIINTERFACE_H


#define SERIAL_SPEED 115200

#define SEND_TELEMETRY_ID 3
#define ARM_SPIKE_ID 1
#define FIRE_SPIKE_ID 2

#include <Arduino.h>
#include "radio.h"
#include <commands.h>
#include <WiFi.h>

class WiFiInterface
{
public:
    WiFiInterface(radio* RadioGCS);
    void setupWIFI();
    void WIFIloop();

private:
    telemetry_t _telemetry;
    radio* _RadioGCS;
    WiFiServer server; // Set web server port number to 80
    // Variable to store the HTTP request
    String header;
    
};

#endif