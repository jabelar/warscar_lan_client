/// scrDrawHUD()
// must be called from controller's draw event

draw_set_font(font1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
for (var i=0; i<max_num_players; i++)
{
    if player_active[i]
    {
        draw_text(10, 10+50*i, "P"+string(i+1)+" score = "+string(player_score[i]))
        draw_text(300, 10+50*i, "Health = "+string(player_health[i]))
        draw_text(600, 10+50*i, "Ammo = "+string(player_ammo[i]))
    }
    else
    {
        // draw_text(10, 10+50*i, "P"+string(i+1)+" not connected")
    }
}    

