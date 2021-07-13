#include "latchControl.h"

latch::latch(ErrorHandler* errHand, radio* canRad):
_errHand(errHand),
_canRad(canRad)
{}

void latch::setup() {
    // Set up twelve volt bus switch
    // IMPORTANT
    pinMode(TWELVE_V_SWITCH, OUTPUT);
    digitalWrite(TWELVE_V_SWITCH, LOW);
    hasRunSetup = true;
    isArmed = false;
    inCountdown = false;
    hasFired = false;
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
        _errHand->raiseError(states::spikeFired);
    }
}

void latch::fireSpike() {
    // Fire the spike
    // CAUTION: FIRING THE SPIKE IS DANGEROUS
    setupCheck();

    if (isArmed) {
        isFiring = true;

        digitalWrite(TWELVE_V_SWITCH, HIGH);
        Serial.println("FIRING SPIKE");
        inCountdown = false;
        imminentDeployment = false;
        fireStartTime = millis();
        hasFired = true;
    }
}

void latch::resetLatch() {
    // Reset the latch
    digitalWrite(TWELVE_V_SWITCH, LOW);
}

void latch::update() {
    // Code that checks current time and if state needs updating
    setupCheck();
    if(_canRad->spikeArmed) {
        armSpike();
        if (_canRad->spikeFire && !inCountdown) {
            beginCountDown();
        }
    }
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