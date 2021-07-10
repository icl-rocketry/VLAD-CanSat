// Right before launch, ensure legs are fully recessed
// Deploy legs
// Reverse drive by a certain amount to retract spike
// landing gear retraction - back to 0


// include guard - limits how many times you can include something (stops it from looping etc)

#ifndef VLAD_SERVO_H
#define VLAD_SERVO_H


#include "ESP32Servo.h"
// grabs arduino library 


class VLAD_servo{

    public:
        VLAD_servo(); // function that gets called when class is created (the constructor)
        int get_speed(); // reads current speed of servo (the one previously assigned to it)
        void update();
        void update(actions request);

        // anything you want to run before the class is initialised
        int speed;

        enum actions {deploy_legs, retract_spike, retract_legs};

        
        int time_length; // IS THIS NEEDED? should time_length be defined as speed is in cpp file?
        int time_length_deploy_legs;
        int time_length_retract_spike;
        int time_length_retract_legs;
        int speed_deploy_legs;
        int speed_retract_spike;
        int speed_retract_legs;
        actions request; // prescribe desired action: deploy legs(1), retract spike(2), retract legs(3)



     private:
        Servo obj_servo;
        void desired_time_speed(actions request); 
        void move_servo(); 

        
        int current_speed; 
        int desired_position;
        int desired_speed;
        int start_time;
        
};

// checks for events will be in the state code later
// public - can be accessed outside func (like global var)
// private - vice versa 
// protected - variables that won't be inherited by other classes 
// void is for initialising functions that wont return anything

#endif