#include "flight.h"

void flight::initialise() {
    buzz.stateAlert();
};

State* flight::update() {
    return this;
};

void flight::exitState() {

};