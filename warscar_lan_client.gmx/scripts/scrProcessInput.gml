scrClearInput(0)

key_up = gamepad_button_check(1, gp_padu) or gamepad_axis_value(1, gp_axislv) < -0.05
key_down = gamepad_button_check(1, gp_padd) or gamepad_axis_value(1, gp_axislv) > 0.05
key_right = gamepad_button_check(1, gp_padr) or gamepad_axis_value(1, gp_axislh) > 0.05
key_left = gamepad_button_check(1, gp_padl) or gamepad_axis_value(1, gp_axislh) < -0.05

key_weapon = gamepad_button_check_pressed(1, gp_face1) or gamepad_button_check_pressed(1, gp_shoulderr) or gamepad_button_check_pressed(1, gp_shoulderrb)


