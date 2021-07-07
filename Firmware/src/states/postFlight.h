// retract landing legs
// stops logging, keep sending heartbeat message
// finish writing to flash and SD card, to avoid corruption
// play mario kart end music

#include "Arduino.h"
#include "state.h"

#ifndef POSTFLIGHT_H
#define POSTFLIGHT_H

class postFlight: public State {
    public:
        void initialise();
        State* update();
        void exitState();
};

#endif