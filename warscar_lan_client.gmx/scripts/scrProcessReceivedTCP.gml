/// scrProcessReceivedTCP(rx_buff, ip_addr_rx, socket_id)
var rx_buff = argument[0]
var ip_addr_rx = argument[1]
var socket_id = argument[2]

if is_undefined(rx_buff)
{
    show_debug_message("Packet contents undefined")
}
else
{
    var packet_type = buffer_read(rx_buff, buffer_u8);
    // show_debug_message("Packet type = "+string(packet_type))
    switch packet_type
    {
        case NF_OBJ_UPDATE:
        {
            scrObjectUpdate(rx_buff)
            break;
        }
        case NF_OBJ_CREATE:
        {
            scrCreateObject(rx_buff)
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
