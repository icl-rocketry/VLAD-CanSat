/* 
Code used to process states, and the transitions between them

Written by the Electronics team, Imperial College London Rocketry
*/

#ifndef STATEMACHINE_H
#define STATEMACHINE_H

#include "Arduino.h"
#include "states/state.h"
#include "children/errorHandling.h"
#include "children/buzzer.h"
#include "children/latchControl.h"
#include "children/servoControl.h"
#include "children/logging/SDcontrol.h"
#include "children/sensors/IMU.h"
#include "children/sensors/barom.h"
#include "children/radio/radio.h"

class State;

class stateMachine {
  public:
    stateMachine();
    void initialise(State* initStatePtr);
    void update();
    void exitState();
    void changeState(State* newStatePtr);
    
    buzzer buzz;
    ErrorHandler errHand;
    latch spike;
    VLAD_servo landingLegs;
    IMU bno;
    barom BMP;
    sd_card_log SD_Card;
    radio loraRad;

  private:
    State* _currStatePtr;
};

#endif
