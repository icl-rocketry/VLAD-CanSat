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
landingLegs(),
bno(&errHand),
BMP(&errHand),
SD_Card(&BMP, &bno, &errHand),
loraRad(&BMP, &bno, &errHand),
spike(&errHand, &loraRad)
{}

void stateMachine::initialise(State* initStatePtr) {

  Serial.begin(115200);

  Serial.println("Initialising classes...");

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
  buzz.update(); // buzz lightyear !!!!!!!

  State* newStatePtr = _currStatePtr -> update();

  if (newStatePtr != _currStatePtr) {
    exitState();
    changeState(newStatePtr);
  }
  delay(10);
}

void stateMachine::changeState(State* newStatePtr) {
  // Delete old state instance and change to new one
  Serial.println("Changing State...");
  delete _currStatePtr;
  _currStatePtr = newStatePtr;
  _currStatePtr -> initialise();
}

void stateMachine::exitState() {
  _currStatePtr -> exitState();
}