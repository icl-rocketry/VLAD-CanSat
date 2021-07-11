// landing alert, startup tune
// Error tunes
// buzz when changing state
// Warning for spike

#include "children/errorHandling.h"
#include <Arduino.h>
#include "pinDefinitions.h"
#include <ESP32_tone.h>

#ifndef BUZZER_H
#define BUZZER_H

class buzzer{
    public:
    buzzer();
    // set up the buzzer
    void setupBuzzer();
    // alert sound when landing
    void landingAlert();
    // alert sound with starting
    void startingAlert();
    // alert sound when there's an error
    void errorAlert();
    // state changing alert
    void stateAlert();
    // warning sound for spike
    void spikeAlert();

    private:
    unsigned long previousT;
    unsigned long delay;
    ESP32_tone ESP_tone;
};


#endif