// latch deployment for spike for a short time
// maybe make way for descent housing
// WARNINGS: HAS TO BE ARMED AND STUFF FOR SAFETY

#ifndef LATCHCONTROL_H
#define LATCHCONTROL_H

#define COUNTDOWN_LEN 10000
#define FIRE_LEN 100

#include <Arduino.h>
#include <pinDefinitions.h>
#include "errorHandling.h"
#include "radio/radio.h"

class latch {
    public:
        latch(ErrorHandler* errHand, radio* canRad);
        void setup(); 
        void armSpike(); 
        void beginCountDown();
        void update();

        bool isArmed; 
        bool hasFired;
        // Mirror of inCountdown, used to signal to other functions
        bool imminentDeployment; 

    private:
        void fireSpike();
        void resetLatch();
        void setupCheck();

        bool inCountdown;
        bool hasRunSetup;
        bool isFiring;

        ErrorHandler* _errHand;
        radio* _canRad;
        uint32_t countdownStartTime;
        uint32_t fireStartTime;
};

#endif