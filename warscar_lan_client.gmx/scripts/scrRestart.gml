/// scrRestart()

connected = false

show_debug_message("Received restart packet")

game_restart()

var obj_id ;
var size = ds_map_size(object_map)-1 ;
var key = ds_map_find_first(object_map) ;

for (var i = 0; i < size; i++;)
{
    obj_id = ds_map_find_value(object_map, key)
    with obj_id
    {
        instance_destroy()
    }
    key = ds_map_find_next(object_map, key);
}

network_destroy(socket_client)
