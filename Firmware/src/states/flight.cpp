#include "flight.h"

void flight::initialise() {
    buzzer.stateAlert();
};

State* flight::update() {
    return this;
};

void flight::exitState() {

};