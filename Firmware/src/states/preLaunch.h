// Default class on startup
// initialise sensors
// Buzz buzzer to show succesful startup
// provide a slow telemetry link
// check for launch
// tighten landing legs
// Provide option for wiping and providing data on flash

#include "Arduino.h"
#include "state.h"

#ifndef PRELAUNCH_H
#define PRELAUNCH_H

class preLaunch: public State {
    public:
        void initialise();
        State* update();
        void exitState();
};

#endif