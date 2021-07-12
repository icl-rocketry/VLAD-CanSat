// BEWARE
// I don't know what I am doing

#include "buzzer.h"
#include "driver/ledc.h"
#include "pinDefinitions.h"

buzzer::buzzer():
    previousT(0)
{
   noteBuffer.reserve(10); 
}

void buzzer::setupBuzzer(){
    // ESP_tone.setCompatibleMode(true);
    ledcSetup(0,0,8);
    ledcAttachPin(BUZZER_PIN,0);
    ledcWrite(0,255); //MAXIMUM volume
    ledcWriteTone(0,0); //write 0 hz so no noise
}

void buzzer::landingAlert(){
        // what tune should we play
        // boring buzzer sounds for now
        //if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        // previousT += delay;
        noteBuffer.push_back(Note_t{1000,1000});
        noteBuffer.push_back(Note_t{0,500});  // delay for 0.5 sec
        noteBuffer.push_back(Note_t{1000,1000});//push_back(Note_t{
            //write zero to 000); // again
        noteBuffer.push_back(Note_t{0, 500});  // delay for 0.5 sec
        noteBuffer.push_back(Note_t{1000,1000}); // last time for dramatic effect
;        //}
        
       
}

void buzzer::startingAlert(){
        // if (millis() - previousT >= delay) {
        // save the last time you made a buzzer sound
        
        noteBuffer.push_back(Note_t{1000,500});
        noteBuffer.push_back(Note_t{1000, 50}); // Send 1KHz sound signal
        noteBuffer.push_back(Note_t{1000, 50}); // delay for 0.5 sec
}        // }


// called in the error handling code
void buzzer::errorAlert(){
    //// wouldn't shut up before the error is fixed
    noteBuffer.push_back(Note_t{1000,10000}); // 10 second
   
}

// included this in initialise code for different states
void buzzer::stateAlert(){
    // my creativity has ended here
    // literally can't think of any sound pattern 
    //// if (millis() - previousT >= delay) {
    // save the last timeNote_tade a buzzer sound
    // previousT += delayNote_t
    noteBuffer.push_back(Note_t{1000, 2000}); // Send 1KHz sound signal
    noteBuffer.push_back(Note_t{0, 1000});      // delay for 0.5 sec
    noteBuffer.push_back(Note_t{1000, 2000}); // again
    // }
}

void buzzer::spikeAlert(){
        // if (millis() - previousT >= delay) {
        // save the last timeNote_tade a buzzer sound
        // previousT += delayNote_t
        noteBuffer.push_back(Note_t{1000, 500}); // Send 1KHz sound signal
        noteBuffer.push_back(Note_t{0, 500});     // delay for 0.5 sec
        noteBuffer.push_back(Note_t{1000, 500}); // again
        noteBuffer.push_back(Note_t{0, 500});    // delay for 0.5 sec
        noteBuffer.push_back(Note_t{1000, 2000}); // 
        // }
}

void buzzer::update() {
      if (millis() - previousT > currentNote.duration){
        previousT = millis(); // update previous time

        if (noteBuffer.size() == 0){ // check size of note buffer
            //write zero to ledc
            ledcWriteTone(0,0);
            return;
        }
        //pop from note buffer to get next note
        currentNote = noteBuffer.front();
        noteBuffer.erase(noteBuffer.begin()); //remove from note buffer
        //ledc play note

}        ledcWriteTone(0,currentNote.frequency);
    }
    

/*

cool music
https://create.arduino.cc/projecthub/GeneralSpud/passive-buzzer-song-take-on-me-by-a-ha-0f04a8

*/