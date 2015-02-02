// must be called from controller's draw event

draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text(room_width/2, room_height/2, "My IP address is "+my_ip_address)
if connected
{
    draw_text(room_width/2, room_height/2+50, "Connected to server")
}
