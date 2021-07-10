// BEWARE
// I don't know what I am doing

#include "buzzer.h"

unsigned long previousT = 0;
const long delay = 6000;

buzzer.buzzer(){
}

void buzzer::setupBuzzer(){
    pinMode(BUZZERPIN, OUTPUT)
}

void buzzer::landingAlert(){
    if (barom.hasLanded() == true){
        // what tune should we play
        // boring buzzer sounds for now
        if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        previousT += delay;
        tone(buzzer.buzzer, 1000, 1000); // Send 1KHz sound signal
        tone(buzzer.buzzer, 0, 500);      // delay for 0.5 sec
        tone(buzzer.buzzer, 1000, 1000); // again
        tone(buzzer.buzzer, 0, 500);      // delay for 0.5 sec
        tone(buzzer.buzzer, 1000, 1000); // last time for dramatic effect
        }
    }
}

void buzzer::startingAlert(bool barom.startDetection()){
    if (barom.startDetection() == true){
        if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        previousT += delay;
        tone(buzzer.buzzer, 1000, 500); // Send 1KHz sound signal
        tone(buzzer.buzzer, 0, 500);      // delay for 0.5 sec
        tone(buzzer.buzzer, 1000, 500); // again
        }
    }
}

// [UNFINISHED] related to the error handling code
void buzzer::errorAlert(){
    /*
    if (){
        // wouldn't shut up before the error is fixed
        // just to annoy everyone
        if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        previousT += delay;
        tone(buzzer.buzzer, 1000, 3000); // Send 1KHz sound signal
        tone(buzzer.buzzer, 0, 3000);      // delay for 0.5 sec
        }
    }
    */
}

// [UNFINISHED] related to state machine code???
void buzzer::stateAlert(){
    /*
    if (){
        // my creativity has ended here
        // literally can't think of any sound pattern 
        if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        previousT += delay;
        tone(buzzer.buzzer, 1000, 2000); // Send 1KHz sound signal
        tone(buzzer.buzzer, 0, 1000);      // delay for 0.5 sec
        tone(buzzer.buzzer, 1000, 2000); // again
        }
    } 
    */
}

void buzzer::spikeAlert(){
    if (latch.imminentDeployment == true;){
        if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        previousT += delay;
        tone(buzzer.buzzer, 1000, 500); // Send 1KHz sound signal
        tone(buzzer.buzzer, 0, 500);      // delay for 0.5 sec
        tone(buzzer.buzzer, 1000, 500); // again
        tone(buzzer.buzzer, 0, 500);      // delay for 0.5 sec
        tone(buzzer.buzzer, 1000, 2000); // 
        }
    } 
    
}



/*

cool music
https://create.arduino.cc/projecthub/GeneralSpud/passive-buzzer-song-take-on-me-by-a-ha-0f04a8

*/