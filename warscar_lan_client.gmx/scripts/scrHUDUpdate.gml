/// scrHUDUpdate(rx_buff)
var rx_buff = argument[0]

max_num_players = buffer_read(rx_buff, buffer_u8)
for (var i=0; i<max_num_players; i++)
{
    player_active[i] = buffer_read(rx_buff, buffer_bool)
    player_score[i] = buffer_read(rx_buff, buffer_u32)
    player_health[i] = buffer_read(rx_buff, buffer_u32)
    player_ammo[i] = buffer_read(rx_buff, buffer_u32)
}
    
show_debug_message("Received HUD update packet")

