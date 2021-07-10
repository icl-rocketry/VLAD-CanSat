// second check for stationary
// wait for command from GCS for deploying spike (manual override for stationary check if person there)

// do nothing but send telemetry (orientation data) for a certain amount of while
// retract spike

#include "Arduino.h"
#include "state.h"
#include "children/buzzer.h"

#ifndef SPIKEACTUATION_H
#define SPIKEACTUATION_H

class spikeActuation: public State {
    public:
        void initialise();
        State* update();
        void exitState();
};

#endif