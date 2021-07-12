// second check for stationary
// wait for command from GCS for deploying spike (manual override for stationary check if person there)

// do nothing but send telemetry (orientation data) for a certain amount of while
// retract spike

#include "Arduino.h"
#include "state.h"
#include "children/buzzer.h"
#include "../stateMachine.h"

#ifndef SPIKEACTUATION_H
#define SPIKEACTUATION_H

class spikeActuation: public State {
    public:
        spikeActuation(stateMachine* sm);
        void initialise();
        State* update();
        void exitState();
        buzzer buzz;
};

#endif