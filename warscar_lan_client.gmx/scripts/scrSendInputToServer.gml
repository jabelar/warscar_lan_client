/// scrSendInputToServer()

show_debug_message("Sending input to server")

buffer_seek(tx_buff_client, buffer_seek_start, 0)
buffer_write(tx_buff_client, buffer_u8, NF_INPUT) // player input
buffer_write(tx_buff_client, buffer_bool, key_forward)
buffer_write(tx_buff_client, buffer_bool, key_backward)
buffer_write(tx_buff_client, buffer_bool, key_right)
buffer_write(tx_buff_client, buffer_bool, key_left)
buffer_write(tx_buff_client, buffer_bool, key_turret_right)
buffer_write(tx_buff_client, buffer_bool, key_turret_left)
buffer_write(tx_buff_client, buffer_bool, key_flag)
buffer_write(tx_buff_client, buffer_bool, key_weapon1_pressed)
buffer_write(tx_buff_client, buffer_bool, key_weapon2_pressed)
buffer_write(tx_buff_client, buffer_bool, key_weapon3_pressed)

network_send_packet(socket_client, tx_buff_client, buffer_tell(tx_buff_client) )
