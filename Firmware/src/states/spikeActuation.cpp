#include "spikeActuation.h"

spikeActuation::spikeActuation(stateMachine* sm):
State(sm)
{}
void spikeActuation::initialise() {
    buzz.stateAlert();
};

State* spikeActuation::update() {
    return this;
};

void spikeActuation::exitState() {

};