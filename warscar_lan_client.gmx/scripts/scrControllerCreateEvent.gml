show_debug_message("Controller create event started")
show_debug_message("Running client side")

scrConstants()
scrIntializeNetworking()

show_debug_message("Initializing input booleans")
scrClearInput()
input_changed = false

max_num_players = 2

player_score[PLAYER1] = 0
player_score[PLAYER2] = 0

points_to_win = 1

music_level = 1.0

scrInitializeHUD()

gamepad_set_axis_deadzone(1, 0.2);