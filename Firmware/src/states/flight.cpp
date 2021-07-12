#include "flight.h"

flight::flight(stateMachine* sm):
    State(sm)
{}

void flight::initialise() {
    buzz.stateAlert();
};

State* flight::update() {
    return this;
};

void flight::exitState() {

};