#include "spikeActuation.h"
#include "postFlight.h"

spikeActuation::spikeActuation(stateMachine* sm):
State(sm)
{}
void spikeActuation::initialise() {
    buzz.stateAlert();
};

State* spikeActuation::update() {
    _sm->SD_Card.logSDCard();
    _sm -> spike.update();
    if (_sm -> spike.hasFired) {
        return new postFlight(_sm);
    }
    return this;
};

void spikeActuation::exitState() {

};