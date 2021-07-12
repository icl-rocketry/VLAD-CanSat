#include <Arduino.h>
#include "stateMachine.h"
#include "states/preLaunch.h"

stateMachine stateMach;

void setup() {
    // Start the state machine with the correct initial state
    stateMach.initialise(new preLaunch(&stateMach));
}

void loop() {
    // Update the state machine
    stateMach.update();
}