// start logging and sending telemetry and errors full force (10Hz)
// check for landing, then go to landing leg deploy

#include "Arduino.h"
#include "state.h"

#ifndef FLIGHT_H
#define FLIGHT_H

class flight: public State {
    public:
        void initialise();
        State* update();
        void exitState();
};

#endif