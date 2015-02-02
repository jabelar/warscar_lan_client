buffer_seek(tx_buff_client, buffer_seek_start, 0)
buffer_write(tx_buff_client, buffer_u8, NF_INPUT) // player input
buffer_write(tx_buff_client, buffer_bool, key_up)
buffer_write(tx_buff_client, buffer_bool, key_down)
buffer_write(tx_buff_client, buffer_bool, key_right)
buffer_write(tx_buff_client, buffer_bool, key_left)
buffer_write(tx_buff_client, buffer_bool, key_weapon)
network_send_packet(socket_client, tx_buff_client, buffer_tell(tx_buff_client) )
