#include "landingLegDeploy.h"

landingLegDeploy::landingLegDeploy(stateMachine* sm):
State(sm)
{}

void landingLegDeploy::initialise() {

    buzz.stateAlert();
};

State* landingLegDeploy::update() {
    return this;
};

void landingLegDeploy::exitState() {

};