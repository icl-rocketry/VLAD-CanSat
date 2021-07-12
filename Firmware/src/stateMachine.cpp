/* 
Code used to process states, and the transitions between them

Written by the Electronics team, Imperial College London Rocketry
*/

#include "Arduino.h" 
#include "stateMachine.h"
#include "states/state.h"

stateMachine::stateMachine():
buzz(),
errHand(&buzz),
spike(),
landingLegs(),
bno(&errHand),
BMP(&errHand),
SD_Card(&BMP, &bno, &errHand),
loraRad(&BMP, &bno, &errHand)
{}

void stateMachine::initialise(State* initStatePtr) {

  // Initialise subsystems
  spike.setup();
  buzz.setupBuzzer();
  landingLegs.begin();
  bno.imuBegin();
  BMP.baromBegin();
  loraRad.setup();
  SD_Card.begin();

  // Initialise the classes
  changeState(initStatePtr);
}

void stateMachine::update() {

  // Update classes that always need updating
  landingLegs.update();
  loraRad.update();
  bno.updateData();

  State* newStatePtr = _currStatePtr -> update();

  if (newStatePtr != _currStatePtr) {
    exitState();
    changeState(newStatePtr);
  }
}

void stateMachine::changeState(State* newStatePtr) {
  // Delete old state instance and change to new one
  delete _currStatePtr;
  _currStatePtr = newStatePtr;
  _currStatePtr -> initialise();
}

void stateMachine::exitState() {
  _currStatePtr -> exitState();
}