#include "Arduino.h"
#include "errorHandling.h"
#include "buzzer.h"

ErrorHandler::ErrorHandler(buzzer* buzz)
{
    _buzz = buzz;
    currentState = 0;

}

uint8_t ErrorHandler::get_state(){
    //getter function
    return currentState; 
}

uint8_t ErrorHandler::raiseError(states component){
    switch (component)
    {
        case states::servo:
            currentState |= pow(2,1); 
            break;

        case states::SDCard:
            currentState |= pow(2,2); 
            BuzzMe();
            break;

        case states::IMU:
            currentState |= pow(2,3); 
            break;

        case states::Baro:
            currentState |= pow(2,4); 
            break;
        
        case states::Radio:
            currentState |= pow(2,5); 
            BuzzMe();
            break;
        
    }
}

void ErrorHandler::BuzzMe(){
    _buzz -> errorAlert();
}

ErrorHandler::~ErrorHandler()
{
}

