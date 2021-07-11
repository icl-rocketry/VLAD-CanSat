#include "spikeActuation.h"

void spikeActuation::initialise() {
    buzz.stateAlert();
};

State* spikeActuation::update() {
    return this;
};

void spikeActuation::exitState() {

};