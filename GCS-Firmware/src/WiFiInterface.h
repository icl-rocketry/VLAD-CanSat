#ifndef WIFIINTERFACE_H
#define WIFIINTERFACE_H


#define SERIAL_SPEED 115200

#define SEND_TELEMETRY_ID 3
#define ARM_SPIKE_ID 1
#define FIRE_SPIKE_ID 2
#define SSID 

#include <Arduino.h>
#include "radio.h"
#include <commands.h>
#include <WiFi.h>

// WIFI credentials
const char *ssid = "ICLR_DAQ";
const char *password = "rocketsAreCool!";

class WiFiInterface
{
public:
    WiFiInterface(radio* RadioGCS);
    void setupWIFI();
    void WIFIloop();

private:
    Command next_command;
    radio* _RadioGCS;

    // Variable to store the HTTP request
    String header;
    
};

#endif