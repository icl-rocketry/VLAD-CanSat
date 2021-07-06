// :)

#include "servoControl.h"
#include "servo.h"
##define speed 0 // 0 = 1, 180 = -1, 90 = 0

VLAD_servo::VLAD_servo():
{};

// have to manually set position of servo first (it only knows its speed, not position)

int VLAD_servo::get_position(){
    current_position = obj.servo.read();


};

int VLAD_servo::desired_time(int current_position,int desired_position){
    // want constant speed of rotation
    // find difference in 2 positions
    // given desired speed and positions, find length of time servo must be moving for

    time_length = 5;
};

void VLAD_servo::update(){ // runs repeatedly to check servo

    if (millis() - start_time >= time_length)

        {obj_servo.write(90)}; // stop moving servo (set speed to zero)


}

void VLAD_servo::move_servo(){
    int start_time = millis();
    obj_servo.write(speed)

};


// REMEMBER TYPES AND SEMI COLONS
// manually make rotation speed slow when deploying legs