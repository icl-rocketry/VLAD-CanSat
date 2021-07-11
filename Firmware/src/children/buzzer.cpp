// BEWARE
// I don't know what I am doing

#include "buzzer.h"

buzzer::buzzer():
    previousT(0),
    delay(6000),
    ESP_tone(0)
{}

void buzzer::setupBuzzer(){
    pinMode(BUZZER_PIN, OUTPUT);
}

void buzzer::landingAlert(){
        // what tune should we play
        // boring buzzer sounds for now
        //if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        // previousT += delay;
        ESP_tone.tone(BUZZER_PIN, 1000, 1000); // Send 1KHz sound signal
        ESP_tone.tone(BUZZER_PIN, 0, 500);      // delay for 0.5 sec
        ESP_tone.tone(BUZZER_PIN, 1000, 1000); // again
        ESP_tone.tone(BUZZER_PIN, 0, 500);      // delay for 0.5 sec
        ESP_tone.tone(BUZZER_PIN, 1000, 1000); // last time for dramatic effect
        //}
}

void buzzer::startingAlert(){
        // if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        // previousT += delay;
        ESP_tone.tone(BUZZER_PIN, 1000, 500); // Send 1KHz sound signal
        ESP_tone.tone(BUZZER_PIN, 0, 500);      // delay for 0.5 sec
        ESP_tone.tone(BUZZER_PIN, 1000, 500); // again
        // }
}

// called in the error handling code
void buzzer::errorAlert(){
    // wouldn't shut up before the error is fixed
    // just to annoy everyone
    if (millis() - previousT >= delay) {
    // save the last time you made a buzzer sound
    previousT += delay;
    ESP_tone.tone(BUZZER_PIN, 1000, delay); // Send 1KHz sound signal
    }
}

// included this in initialise code for different states
void buzzer::stateAlert(){
    // my creativity has ended here
    // literally can't think of any sound pattern 
    // if (millis() - previousT >= delay) {
    // save the last time you made a buzzer sound
    // previousT += delay;
    ESP_tone.tone(BUZZER_PIN, 1000, 2000); // Send 1KHz sound signal
    ESP_tone.tone(BUZZER_PIN, 0, 1000);      // delay for 0.5 sec
    ESP_tone.tone(BUZZER_PIN, 1000, 2000); // again
    // }
}

void buzzer::spikeAlert(){
        // if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        // previousT += delay;
        ESP_tone.tone(BUZZER_PIN, 1000, 500); // Send 1KHz sound signal
        ESP_tone.tone(BUZZER_PIN, 0, 500);      // delay for 0.5 sec
        ESP_tone.tone(BUZZER_PIN, 1000, 500); // again
        ESP_tone.tone(BUZZER_PIN, 0, 500);      // delay for 0.5 sec
        ESP_tone.tone(BUZZER_PIN, 1000, 2000); // 
        // }
}



/*

cool music
https://create.arduino.cc/projecthub/GeneralSpud/passive-buzzer-song-take-on-me-by-a-ha-0f04a8

*/