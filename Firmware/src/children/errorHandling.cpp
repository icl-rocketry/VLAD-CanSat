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

void ErrorHandler::raiseError(states component){
    switch (component)
    {
        case states::servo:
            currentState |= (uint8_t)pow(2,1); 
            break;

        case states::SDCard:
            currentState |= (uint8_t)pow(2,2); 
            BuzzMe();
            break;

        case states::IMU:
            currentState |= (uint8_t)pow(2,3); 
            break;

        case states::Baro:
            currentState |= (uint8_t)pow(2,4); 
            break;
        
        case states::Radio:
            currentState |= (uint8_t)pow(2,5); 
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
