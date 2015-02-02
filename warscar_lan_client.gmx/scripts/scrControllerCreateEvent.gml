show_debug_message("Controller create event started")
show_debug_message("Running client side")

scrConstants()
scrIntializeNetworking()
scrInitializeHUD()
show_debug_message("Initializing input booleans")
scrClearInput()

connected = false

object_map = ds_map_create() // maps object ids on server to client

