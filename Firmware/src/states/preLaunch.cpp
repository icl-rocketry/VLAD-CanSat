#include "preLaunch.h"

preLaunch::preLaunch(stateMachine* sm):
State(sm)
{}
void preLaunch::initialise() {
    buzz.stateAlert();
    _sm->SD_Card.open_check();
};

State* preLaunch::update() {
    Serial.println("Loop started...");
    _sm->SD_Card.logSDCard();
    Serial.println("SD card completed!");
    return this;
};

void preLaunch::exitState() {

};