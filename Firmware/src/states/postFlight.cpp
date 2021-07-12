#include "postFlight.h"

postFlight::postFlight(stateMachine* sm):
State(sm)
{}

void postFlight::initialise() {
    buzz.stateAlert();
};

State* postFlight::update() {
    return this;
};

void postFlight::exitState() {

};