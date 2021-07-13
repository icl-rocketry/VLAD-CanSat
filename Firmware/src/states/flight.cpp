#include "flight.h"
#include "landingLegDeploy.h"

flight::flight(stateMachine* sm):
    State(sm)
{}

void flight::initialise() {
    _sm -> buzz.stateAlert();
};

State* flight::update() {
    _sm->SD_Card.logSDCard();

    // Move immediately as IMU not functioning

    return new landingLegDeploy(_sm);
}

void flight::exitState() {

};