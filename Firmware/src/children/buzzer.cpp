// BEWARE
// I don't know what I am doing

#include "buzzer.h"

buzzer::buzzer(){
};

void buzzer::setupBuzzer(){
    pinMode(BUZZERPIN, OUTPUT)
};

void buzzer::landingAlert(bool barom::hasLanded()){
    if (barom::hasLanded() == true){
        // what tune should we play
        // boring buzzer sounds for now
        tone(buzzer, 1000); // Send 1KHz sound signal
        delay(1000);        // delay for 1 sec
        tone(buzzer, 1000); // again
        noTone(buzzer);     // Stop sound
        delay(3000);        // 4 sec
    }
};

void buzzer::startingAlert(bool barom::startDetection()){
    if (barom::startDetection() == true){
        tone(buzzer, 1000); // Send 1KHz sound signal
        delay(500);        // delay for 0.5 sec
        tone(buzzer, 1000); // again
        delay(500);        // delay for 0.5 sec
        tone(buzzer, 1000); // last time for dramatic effect
        noTone(buzzer);     // Stop sound
        delay(3000);        // 3 sec
    }
};

// [UNFINISHED] related to the error handling code
void buzzer::errorAlert(){
    /*
    if (){
        // wouldn't shut up before the error is fixed
        // just to annoy everyone
        tone(buzzer, 1000); // Send 1KHz sound signal
        delay(500);        // delay for 0.5 sec
    }
    */
};

// [UNFINISHED] related to state machine code???
void buzzer::stateAlert(){
    /*
    if (){
        // my creativity has ended here
        // literally can't think of any sound pattern 
        tone(buzzer, 1000); // Send 1KHz sound signal
        delay(1000);        // delay for 1 sec
        tone(buzzer, 1000); // again
        delay(300);        // delay for 0.3 sec
        tone(buzzer, 1000); // again
        noTone(buzzer);     // Stop sound
        delay(4000);        // 4 sec
    } 
    */
};

// [UNFINISHED] related to latchControl???
void buzzer::spikeAlert(){
    /*
    if (){
        tone(buzzer, 1000); // Send 1KHz sound signal
        delay(300);        // delay for 0.3 sec
        tone(buzzer, 1000); // again
        delay(300);        // delay for 0.3 sec
        tone(buzzer, 1000); // again
        delay(1000);        // delay for 1 sec
        tone(buzzer, 1000); // 
        noTone(buzzer);     // Stop sound
        delay(4000);        // 4 sec
    } 
    */
};



/*

cool music
https://create.arduino.cc/projecthub/GeneralSpud/passive-buzzer-song-take-on-me-by-a-ha-0f04a8

*/