// broadcast client info
// show_debug_message("Sending broadcast message")

buffer_seek(tx_buff_broadcast, buffer_seek_start, 0)
buffer_write(tx_buff_broadcast, buffer_u8, NF_CLIENT_ANNOUNCE)
buffer_write(tx_buff_broadcast, buffer_string, "Warscar Client #1")
network_send_broadcast( socket_broadcast, 6512, tx_buff_broadcast, buffer_tell(tx_buff_broadcast) )

if my_ip_address == "127.0.0.1" // broadcast frequently to allow self IP determination
{
    alarm[0] = room_speed * 1
}
else
{
    alarm[0] = room_speed *30
}
