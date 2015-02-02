/// scrInitializeNetworking()

my_ip_address = "127.0.0.1"


// create client TCP socket
socket_client = network_create_socket(network_socket_tcp)
if socket_client < 0
{
    show_debug_message("Failed to create client socket")
}
else
{
    show_debug_message("Successfully created client socket = "+string(socket_client))
}

ip_addr_rx = "192.168.1.0"

// create network buffer for sent messages
show_debug_message("Creating transmit buffer")
tx_buff_client = buffer_create( 256, buffer_grow, 1)

// create listening server for UDP broadcasts
show_debug_message("Creating listener to listen for server broadcasts")
socket_listener = network_create_server(network_socket_udp, 6512, 32)
if socket_listener < 0
{
    show_debug_message("Failed to create listener socket")
}
else
{
    show_debug_message("Successfully created UDP listener socket = "+string(socket_listener))
}

// create broadcast UDP socket
socket_broadcast = network_create_socket(network_socket_udp)
if socket_broadcast < 0
{
    show_debug_message("Failed to create broadcast socket")
}
else
{
    show_debug_message("Successfully created broadcast socket = "+string(socket_broadcast))
}

// create network buffer for broadcast messages
show_debug_message("Creating broadcast buffer")
tx_buff_broadcast = buffer_create( 256, buffer_grow, 1)

// start the broadcasting alarm
broadcast_alarm = room_speed * 3
