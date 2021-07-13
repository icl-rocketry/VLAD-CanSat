#include "landingLegDeploy.h"
#include "spikeActuation.h"

landingLegDeploy::landingLegDeploy(stateMachine* sm):
State(sm)
{}

void landingLegDeploy::initialise() {
    _sm -> buzz.stateAlert();
    _sm -> buzz.landingAlert();
    _sm -> landingLegs.request_move(actions::deploy_legs);
};

State* landingLegDeploy::update() {
    _sm->SD_Card.logSDCard();
    if (_sm->landingLegs.get_speed() < 85 || _sm->landingLegs.get_speed() >95) {
            return this;
    } else {
        return new spikeActuation(_sm);
    }
    Serial.println("In_Landing_legs");
};

void landingLegDeploy::exitState() {

};