// Right before launch, ensure legs are fully recessed (this must be done manually - it only knows its speed, not position)

// Through testing, find working servo speed + time length combinations for:

// - Deploying legs
// - Reversing drive to retract spike
// - Retracting legs


#include "servoControl.h"
#include "ESP32Servo.h"
#include <pinDefinitions.h> 

//servo speeds: 0 = 1, 180 = -1, 90 = 0 

#define time_length_deploy_legs 5000 // assuming time in ms
#define time_length_retract_spike 1000
#define time_length_retract_legs 4000

#define speed_deploy_legs 0
#define speed_retract_spike 180
#define speed_retract_legs 180


VLAD_servo::VLAD_servo(radio* radObj)
{
    _Rad = radObj;
    time_length = 0;
    start_time = 0;
    deployed = false;
    moving = false;
    hasDeployed = false;
};

void VLAD_servo::begin(){
    obj_servo.attach(SERVO_PIN);
};


int VLAD_servo::get_speed(){
    current_speed = obj_servo.read();
    return current_speed;
};

void VLAD_servo::desired_time_speed(actions request){ // sets the length of time and speed at which servo will run, given desired action

    switch(request){

        case deploy_legs:
            speed = speed_deploy_legs;
            time_length = time_length_deploy_legs;
            deployed = true;
            break;

        case retract_spike:
            speed = speed_retract_spike;
            time_length = time_length_retract_spike;
            break;

        case retract_legs:
            time_length = speed_retract_legs;
            speed = time_length_retract_legs;
            deployed = false;
            break;
            
    }


};

void VLAD_servo::move_servo(){
    start_time = millis(); // store the time at which servo begins moving
    obj_servo.write(speed); // begin moving servo
    moving = true;

};

void VLAD_servo::update(){ // runs repeatedly to check servo
    if (_Rad.spikeArmed && !deployed && !moving && !hasDeployed) {
        request_move(actions::deploy_legs);
    }

    if (!moving && _Rad.spikeFire && deployed) {
        request_move(actions::retract_legs);
    }

    if (millis() - start_time >= time_length) // when the time_length has passed...
    {
        obj_servo.write(90);
        moving = false;
    } // ...stop moving servo (set speed to zero)

};


void VLAD_servo::request_move(actions request){
    desired_time_speed(request);
    move_servo();
};

