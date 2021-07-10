#include "spikeActuation.h"

void spikeActuation::initialise() {
    buzzer.stateAlert();
};

State* spikeActuation::update() {
    return this;
};

void spikeActuation::exitState() {

};