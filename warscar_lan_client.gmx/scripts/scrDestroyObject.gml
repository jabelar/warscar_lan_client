/// scrDestroyObject(rx_buff)
var rx_buff = argument[0] ;

var server_obj_id = buffer_read(rx_buff, buffer_u32)
var client_obj_id = ds_map_find_value(object_map, server_obj_id)
with client_obj_id
{
    instance_destroy()
}
ds_map_delete(object_map, server_obj_id) // track server to client object mapping

// show_debug_message("Object deleted for server id = "+string(server_obj_id)+", client id = "+string(client_obj_id))
