#include "preLaunch.h"

void preLaunch::initialise() {
    buzzer.stateAlert();
};

State* preLaunch::update() {
    return this;
};

void preLaunch::exitState() {

};