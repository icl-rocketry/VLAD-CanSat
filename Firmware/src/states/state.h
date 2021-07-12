/*
Parent class of the states

Written by Electronics Team, Imperial College London Rocketry
*/

#ifndef STATE_H
#define STATE_H

#include "Arduino.h"

class stateMachine; // Forward declaration to stop circular dependency

class State {
  public:
    State(stateMachine* sm);
    virtual void initialise() = 0;
    virtual State* update() = 0;
    virtual void exitState() = 0;
    virtual ~State() = 0; // Pure virtual destructor

    protected:
      stateMachine* _sm;
};

#endif
