/// scrCreateObject(rx_buff, obj_index)
var rx_buff = argument[0];
var obj_index = argument[1];

var inst_id = buffer_read(rx_buff, buffer_u32)
var obj_x = buffer_read(rx_buff, buffer_s32);
var obj_y = buffer_read(rx_buff, buffer_s32);
var obj_speed = buffer_read(rx_buff, buffer_s32);
var obj_dir = buffer_read(rx_buff, buffer_s32);
var obj_image_index = buffer_read(rx_buff, buffer_u8);
var obj_image_speed = buffer_read(rx_buff, buffer_u8);
var obj_image_alpha = buffer_read(rx_buff, buffer_u8);
var obj_image_blend = buffer_read(rx_buff, buffer_u32);

// check if already exists (since create packets may be sent out during other client login)
if not ds_map_exists(object_map, inst_id)
{
    var new_instance = instance_create(obj_x, obj_y, obj_index);
    new_instance.speed = obj_speed
    new_instance.direction = obj_dir
    new_instance.image_angle = obj_dir
    new_instance.image_index = obj_image_index
    new_instance.image_speed = obj_image_speed
    new_instance.image_alpha = obj_image_alpha
    new_instance.image_blend = obj_image_blend
    ds_map_add(object_map, inst_id, new_instance) // track server to client object mapping
    show_debug_message("Object created for server id = "+string(inst_id)+", client id = "+string(new_instance)+" at x = "+string(obj_x)+" y = "+string(obj_y))
}
else
{
    show_debug_message("Received create packet for object that already exists")
}
