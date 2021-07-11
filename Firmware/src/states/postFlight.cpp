#include "postFlight.h"

void postFlight::initialise() {
    buzz.stateAlert();
};

State* postFlight::update() {
    return this;
};

void postFlight::exitState() {

};