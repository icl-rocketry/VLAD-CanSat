#include "preLaunch.h"
#include "flight.h"

preLaunch::preLaunch(stateMachine* sm):
State(sm)
{}
void preLaunch::initialise() {
    buzz.stateAlert();
    _sm->SD_Card.open_check();
    _sm->buzz.startingAlert();
    _sm->landingLegs.request_move(actions::retract_legs);
};

State* preLaunch::update() {
    // Move immediately as IMU not working
    return new flight(_sm);
};

void preLaunch::exitState() {

};
