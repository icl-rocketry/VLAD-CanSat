#include "preLaunch.h"

void preLaunch::initialise() {
    buzz.stateAlert();
};

State* preLaunch::update() {
    return this;
};

void preLaunch::exitState() {

};