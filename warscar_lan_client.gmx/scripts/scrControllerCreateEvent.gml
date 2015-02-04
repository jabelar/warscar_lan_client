show_debug_message("Controller create event started")
show_debug_message("Running client side")

scrConstants()
scrIntializeNetworking()
scrInitializeHUD()
show_debug_message("Initializing input booleans")
scrClearInput()

global.num_human_players = 2

global.player_score[PLAYER1] = 0
global.player_score[PLAYER2] = 0

global.points_to_win = 1

global.music_level = 1.0

gamepad_set_axis_deadzone(1, 0.2);
