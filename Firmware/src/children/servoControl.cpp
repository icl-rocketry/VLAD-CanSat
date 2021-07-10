// Right before launch, ensure legs are fully recessed (this must be done manually - it only knows its speed, not position)

// Through testing, find working servo speed + time length combinations for:

// - Deploying legs
// - Reversing drive to retract spike
// - Retracting legs


#include "servoControl.h"
#include "servo.h"
//servo speeds: 0 = 1, 180 = -1, 90 = 0 

#define time_length_deploy_legs 5000 // assuming time in ms
#define time_length_retract_spike 1000
#define time_length_retract_legs 4000

#define speed_deploy_legs 0
#define speed_retract_spike 180
#define speed_retract_legs 180


VLAD_servo::VLAD_servo():
{};


int VLAD_servo::get_speed(){
    current_speed = obj.servo.read();
};

int VLAD_servo::desired_time_speed(actions request){ // sets the length of time and speed at which servo will run, given desired action

    
    if (request == actions::deploy_legs)
        {speed = speed_deploy_legs
        time_length = time_length_deploy_legs};

    else if (request == retract_spike)
        {speed = speed_retract_spike
        time = time_length_retract_spike};

    else if (request == retract_legs)
        {time = speed_retract_legs
        speed = time_length_retract_legs};

};

void VLAD_servo::move_servo(){
    int start_time = millis(); // store the time at which servo begins moving
    obj_servo.write(speed); // begin moving servo

};

void VLAD_servo::update(){ // runs repeatedly to check servo

    if (millis() - start_time >= time_length) // when the time_length has passed...

        {obj_servo.write(90)}; // ...stop moving servo (set speed to zero)


};