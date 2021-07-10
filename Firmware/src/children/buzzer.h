// landing alert, startup tune
// Error tunes
// buzz when changing state
// Warning for spike

#include "children/sensors/barom.h"
#include <Arduino.h>
#include "pinDefinition.h"

#ifndef BUZZER_H
#define BUZZER_H

class buzzer{
    public:
    // set up the buzzer
    void setupBuzzer();
    // alert sound when landing
    void landingAlert(bool barom::hasLanded());
    // alert sound with starting
    void startingAlert(bool barom::startDetection());
    // alert sound when there's an error
    void errorAlert();
    // state changing alert
    void stateAlert();
    // warning sound for spike
    void spikeAlert();
}


#endif