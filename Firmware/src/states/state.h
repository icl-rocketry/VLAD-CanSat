/*
Parent class of the states

Written by Electronics Team, Imperial College London Rocketry
*/

#include "Arduino.h"

#ifndef STATE_H
#define STATE_H

class State {
  public:
    virtual void initialise();
    virtual State* update() = 0;
    virtual void exitState();
    virtual ~State() = 0; // Pure virtual destructor
};

#endif
