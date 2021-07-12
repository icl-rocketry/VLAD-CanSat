#include "preLaunch.h"

preLaunch::preLaunch(stateMachine* sm):
State(sm)
{}
void preLaunch::initialise() {
    buzz.stateAlert();
};

State* preLaunch::update() {
    return this;
};

void preLaunch::exitState() {

};