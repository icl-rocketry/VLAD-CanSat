#include "latchControl.h"

latch::latch(ErrorHandler* errHand):
_errHand(errHand)
{}

void latch::setup() {
    // Set up twelve volt bus switch
    // IMPORTANT
    pinMode(TWELVE_V_SWITCH, OUTPUT);
    digitalWrite(TWELVE_V_SWITCH, LOW);
    hasRunSetup = true;
}

void latch::armSpike() {
    // Set armed flag to true
    setupCheck();
    isArmed = true;
    _errHand->raiseError(states::spikeArmed);
}


void latch::beginCountDown() {
    // Start the countdown for firing the spike
    setupCheck();
    if (isArmed) {
        inCountdown = true;
        imminentDeployment = true;
        countdownStartTime = millis();
    }
}

void latch::fireSpike() {
    // Fire the spike
    // CAUTION: FIRING THE SPIKE IS DANGEROUS
    setupCheck();

    if (isArmed) {
        isFiring = true;
        _errHand->raiseError(states::spikeFired);
        digitalWrite(TWELVE_V_SWITCH, HIGH);
        inCountdown = false;
        imminentDeployment = false;
        fireStartTime = millis();
    }
}

void latch::resetLatch() {
    // Reset the latch
    digitalWrite(TWELVE_V_SWITCH, LOW);
    isFiring = false;
}

void latch::update() {
    // Code that checks current time and if state needs updating
    setupCheck();
    if (inCountdown && millis() - countdownStartTime >= COUNTDOWN_LEN) {
        fireSpike();
    } else if(isFiring && millis() - countdownStartTime >= FIRE_LEN) {
        resetLatch();
    }
}

void latch::setupCheck() {
    // Check if setup has been run, and runs it if not
    if (!hasRunSetup) {
        setup();
    }
}