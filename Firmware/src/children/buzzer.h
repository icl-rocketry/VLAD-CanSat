// landing alert, startup tune
// Error tunes
// buzz when changing state
// Warning for spike

#include "children/errorHandling.h"
#include <Arduino.h>
#include "pinDefinitions.h"
#include <vector>

#ifndef BUZZER_H
#define BUZZER_H



struct Note_t{
    uint16_t frequency;
    uint16_t duration;
};

class buzzer{
    public:
        buzzer();
        // set up the buzzer
        void setupBuzzer();
        // alert sound when landing
        void landingAlert();
        // alert sound with starting
        void startingAlert();
        // alert sound when there's an error
        void errorAlert();
        // state changing alert
        void stateAlert();
        // warning sound for spike
        void spikeAlert();

        //update function
        void update();

    private:
        std::vector<Note_t> noteBuffer;
        Note_t currentNote;
        
        unsigned long previousT;
};


#endif