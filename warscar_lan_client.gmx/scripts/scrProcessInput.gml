/// scrProcessInput()

scrSavePreviousInput()
scrClearInput()

if instance_exists(objPlayer2)
{
    // tank movement input
    
    var joy_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
    var joy_distance = point_distance(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
    var ang_diff = angle_difference(joy_direction, objPlayer2.image_angle)
        
    if joy_distance > 0.1
    {
        if abs(ang_diff) < TANK_TURN_SPEED_BASE
        {
            key_forward = true
        }
        else if abs(ang_diff) > (180 - TANK_TURN_SPEED_BASE * 9)
        {
            key_backward = true 
        }
        else if ang_diff < 0
        {
            key_right = true ;
        }
        else if ang_diff > 0
        {
            key_left = true ;
        }
    }
    
    // turret movement input
    
    var joy_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axisrh), gamepad_axis_value(1, gp_axisrv));
    var joy_distance = point_distance(0, 0, gamepad_axis_value(1, gp_axisrh), gamepad_axis_value(1, gp_axisrv));
    var ang_diff = angle_difference(joy_direction, objPlayer2.image_angle+turret_image_angle[1])
    if joy_distance > 0.1
    {
        if ang_diff < 0 - TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
        {
            key_turret_right = true
            key_turret_left = false
        }
        if ang_diff > TANK_TURN_SPEED_BASE*TANK_TURRET_SPEED_MULTIPLIER
        {
            key_turret_right = false
            key_turret_left = true
        }
    }   
    
    // trigger input
    key_weapon1_pressed = gamepad_button_check_pressed(1, gp_shoulderr) or gamepad_button_check_pressed(1, gp_shoulderrb);
    key_weapon2_pressed = gamepad_button_check_pressed(1, gp_shoulderl) or gamepad_button_check_pressed(1, gp_shoulderlb); 
    key_weapon3_pressed = gamepad_button_check_pressed(1, gp_face3)
    key_flag = gamepad_button_check_pressed(1, gp_face2)
}
