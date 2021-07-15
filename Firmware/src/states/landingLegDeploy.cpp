#include "landingLegDeploy.h"
#include "spikeActuation.h"

landingLegDeploy::landingLegDeploy(stateMachine* sm):
State(sm)
{}

void landingLegDeploy::initialise() {
    _sm -> buzz.stateAlert();
    _sm -> buzz.landingAlert();
    _sm->landingLegs.request_move(actions::retract_legs);
    Serial.println("In_Landing_legs");
};

State* landingLegDeploy::update() {
    _sm->SD_Card.logSDCard();
    _sm->landingLegs.update();
    Serial.println("In_Landing_legs");
    return this;
};

void landingLegDeploy::exitState() {

};