#include "landingLegDeploy.h"

void landingLegDeploy::initialise() {
    buzz.stateAlert();
};

State* landingLegDeploy::update() {
    return this;
};

void landingLegDeploy::exitState() {

};