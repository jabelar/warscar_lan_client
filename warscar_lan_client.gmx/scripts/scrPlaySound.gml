// argument0 is rx_buff
var sound_type = buffer_read(argument0, buffer_u8)
var sound_x = buffer_read(argument0, buffer_u32);
var sound_y = buffer_read(argument0, buffer_u32);

var sound_index = ds_map_find_value(const_sound_map, sound_type)
if not is_undefined(sound_index)
{
    audio_play_sound_at(sound_index, sound_x, sound_y, 0, room_width*1.5, room_width*2, 1, false, 100)
}
else
{
    show_debug_message("Unrecognized sound type")
}