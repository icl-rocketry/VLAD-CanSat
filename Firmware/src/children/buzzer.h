// landing alert, startup tune
// Error tunes
// buzz when changing state
// Warning for spike

#include "children/sensors/barom.h"
#include <Arduino.h>
#include "pinDefinitions.h"

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
    const long delay;
}


#endif