// Deploy landing legs
// stop once upright
// start buzzing
// once completed and stationary, move to spike

#include "Arduino.h"
#include "state.h"
#include "children/buzzer.h"
#include "stateMachine.h"

#ifndef LANDINGLEGDEPLOY_H
#define LANDINGLEGDEPLOY_H

class landingLegDeploy: public State {
    public:
        landingLegDeploy(stateMachine* sm);
        void initialise();
        State* update();
        void exitState();
};

#endif