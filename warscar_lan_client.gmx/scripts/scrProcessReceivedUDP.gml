/// scrProcessReceivedUDP(rx_buff, ip_addr_rx, socket_id)
var rx_buff = argument[0];
var ip_addr_rx = argument[1];
var socket_id = argument[2];


// show_debug_message("Received UDP Packet")

var packet_type = buffer_read(rx_buff, buffer_u8)
switch packet_type
{
    case NF_SERVER_ANNOUNCE:
    {
        var server_name = buffer_read(rx_buff, buffer_string)
        if not connected
        {
            show_debug_message("Connecting to server at: "+ip_addr_rx)
            ip_addr_server = ip_addr_rx
            result = network_connect( socket_client, ip_addr_server, 6511 )
            if result < 0
            {
                show_debug_message("Networking connection failed")
            }
            else
            {
                show_debug_message("Networking connection succeeded")
                connected = true
            }
                }
        
        // show_debug_message("Server broadcast received from "+ip_addr_rx+", name is "+server_name);
        break;
    }
    case NF_CLIENT_ANNOUNCE:
    {
        var client_name = buffer_read(rx_buff, buffer_string)
        if my_ip_address == "127.0.0.1" // default value
        {
            my_ip_address = ip_addr_rx
            show_debug_message("My IP address = "+string(my_ip_address))
        }
        else
        {
            if my_ip_address == ip_addr_rx
            {
                show_debug_message("My own broadcast")
            }
            else
            {
                // show_debug_message("See client announce packet from IP address = "+string(ip_addr_rx))
            }
        }
        break;
    }
    default:
    {
        show_debug_message("Unrecognized broadcast packet type received")
    }
}