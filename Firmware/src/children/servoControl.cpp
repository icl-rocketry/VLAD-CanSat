// Right before launch, ensure legs are fully recessed (this must be done manually - it only knows its speed, not position)

// Through testing, find working servo speed + time length combinations for:

// - Deploying legs
// - Reversing drive to retract spike
// - Retracting legs


#include "servoControl.h"
#include "servo.h"
##define speed 0 // 0 = 1, 180 = -1, 90 = 0

VLAD_servo::VLAD_servo():
{};


int VLAD_servo::get_speed(){
    current_speed = obj.servo.read();
};

// CHECK: SHOULD action BE DEFINED AS speed ABOVE, OR AS PUBLIC IN HEADER FILE
// should update function be in header file also? do values need to be specifically returned, or is setting them within the function enough?

int VLAD_servo::desired_time_speed(action){ // sets the length of time and speed at which servo will run, given desired action
    time_length_deploy_legs = 5; 
    speed_deploy_legs = 0;

    time_length_retract_spike = 1;
    speed_retract_spike = 180;


    time_length_retract_legs = 4;
    speed_retract_legs = 180;


    
    if (action == 1)
        {time_length = time_length_deploy_legs
        speed = speed_deploy_legs};

    else if (action == 2)
        {time_length = time_length_retract_spike
        speed = speed_retract_spike};

    else if (action == 3)
        {time_length = time_length_retract_legs
        speed = speed_retract_legs};

};

void VLAD_servo::move_servo(){
    int start_time = millis(); // store the time at which servo begins moving
    obj_servo.write(speed) // begin moving servo

};

void VLAD_servo::update(){ // runs repeatedly to check servo

    if (millis() - start_time >= time_length) // when the time_length has passed...

        {obj_servo.write(90)}; // ...stop moving servo (set speed to zero)


};
