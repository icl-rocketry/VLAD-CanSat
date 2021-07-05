#include <Arduino.h>
#include "stateMachine.h"
#include "states/preLaunch.h"

stateMachine stateMach;

void Setup() {
    // Start the state machine with the correct initial state
    stateMach.initialise(new preLaunch);
}

void Loop() {
    // Update the state machine
    stateMach.update();
}