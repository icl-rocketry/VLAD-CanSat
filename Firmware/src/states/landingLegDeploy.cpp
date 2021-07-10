#include "landingLegDeploy.h"

void landingLegDeploy::initialise() {
    buzzer.stateAlert();
};

State* landingLegDeploy::update() {
    return this;
};

void landingLegDeploy::exitState() {

};