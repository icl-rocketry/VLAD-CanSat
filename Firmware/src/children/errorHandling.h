// collect errors from other children
// control buzzer for errors
// provide data to other children
// Palash

#ifndef ErrorHandling
#define ErrorHandling 


#include "Arduino.h"
#include "buzzer.h"


// This snippet will be called any time there is an error update from any of the children. Not usable rn.
enum states
{
    servo = 1, SDCard = 2, imu = 3, Baro = 4, Radio = 5 // IMU not used as conflicts with IMU class
};

class ErrorHandler
{
public:
    uint8_t get_state(); //default state = 0 or number if there is an error
    void raiseError(states component); //will be called by the objects
    void BuzzMe(); //buzzer to be activated
    ErrorHandler(buzzer* buzz);
    ~ErrorHandler();

private:
    uint8_t currentState;
    buzzer * _buzz;
};



#endif

// Not sure what to do about the sending data to other children.