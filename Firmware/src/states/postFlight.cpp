#include "postFlight.h"

void postFlight::initialise() {
    buzzer.stateAlert();
};

State* postFlight::update() {
    return this;
};

void postFlight::exitState() {

};