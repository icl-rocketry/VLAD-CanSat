#include "postFlight.h"

postFlight::postFlight(stateMachine* sm):
State(sm)
{}

void postFlight::initialise() {
    _sm -> buzz.stateAlert();
    _sm -> buzz.errorAlert();
    _sm -> landingLegs.request_move(actions::retract_legs);
};

State* postFlight::update() {
    return this;
};

void postFlight::exitState() {

};