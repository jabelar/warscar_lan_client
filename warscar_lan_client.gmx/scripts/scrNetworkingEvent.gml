// https://www.yoyogames.com/tech_blog/11 for tutorial

// show_debug_message("networking event occurred")

var socket_id = ds_map_find_value( async_load, "id" );
var network_event_type = ds_map_find_value(async_load, "type");
var port = ds_map_find_value(async_load, "port");
var ip_addr_rx = ds_map_find_value(async_load, "ip");
var rx_buff = ds_map_find_value(async_load, "buffer");

// show_debug_message("Packet received from ip ="+string(ip_addr_rx)+", socket id ="+string(socket_id)+", port ="+string(port))

if socket_id == socket_client // TCP packet incoming
{
    if is_undefined(rx_buff)
    {
        show_debug_message("Packet contents undefined")
    }
    else
    {
        var packet_type = buffer_read(rx_buff, buffer_u8);
        // show_debug_message("Packet type = "+string(packet_type))
        status_string = "Received TCP packet"
        switch packet_type
        {
            case NF_OBJ_UPDATE:
            {
                // show_debug_message("Received object update packet")
                scrObjectUpdate(rx_buff)
                break;
            }
            case NF_OBJ_CREATE:
            {
                show_debug_message("Received object create packet")
                var obj_type = buffer_read(rx_buff, buffer_u8);
                switch obj_type
                {
                    case PLAYER:
                    {
                        scrCreateObject(rx_buff, objPlayer)
                        break;
                    }
                    case OBSTACLE:
                    {
                        scrCreateObject(rx_buff, objObstacle)
                        break;
                    }
                    case BULLET:
                    {
                        scrCreateObject(rx_buff, objBullet)
                        break;
                    }
                   default: // unrecognized object type
                    {
                        show_debug_message("Unrecognized object type")
                    }
                }
                break;
            }
            case NF_OBJ_DESTROY:
            {
                scrDestroyObject(rx_buff)
                break;
            }
            case NF_EFFECT_CREATE:
            {
                scrCreateEffect(rx_buff)
                break;
            }
            case NF_SOUND_PLAY:
            {
                scrPlaySound(rx_buff)
                break;
            }
            case NF_HUD:
            {
                scrHUDUpdate(rx_buff)
                break;
            }
            default: // unrecognized packet type
            {
                show_debug_message("Unrecognized packet type")
            }
        }
    }
}
else // UDP packet
{
    scrProcessReceivedUDP(rx_buff, ip_addr_rx, socket_id)    
}
