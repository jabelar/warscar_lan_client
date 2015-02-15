///scrInputHasChanged()
var has_changed;

has_changed = (key_forward != key_forward_prev) or (key_backward != key_backward_prev)
has_changed = has_changed or (key_right != key_right_prev) or (key_left != key_left_prev)
has_changed = has_changed or (key_turret_right != key_turret_right_prev) or (key_turret_left != key_turret_left_prev)
// key pressed already inherently have processed comparison to previous
has_changed = has_changed or key_weapon1_pressed or key_weapon2_pressed
has_changed = has_changed or key_weapon3_pressed or key_flag

return has_changed ;