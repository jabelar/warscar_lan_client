/// scrPlayer2DrawEvent()

draw_self()
draw_sprite_ext(sprWeaponHuskyBlue, image_number, x, y, image_xscale, image_yscale, image_angle+objController.turret_image_angle[1], image_blend, image_alpha)

draw_healthbar(x-TILE_SIZE, y-1.5*TILE_SIZE, x+TILE_SIZE, y-1.3*TILE_SIZE, objController.player_health[1], c_black, c_red, c_green, 0, true, true)

var direction_to_home ;
// draw indicators
if view_current = current_player // only draw in players view
{
    // home indicator
    direction_to_home = point_direction(x, y, xstart, ystart)
    if point_distance(x, y, xstart, ystart) > 400
    {
        draw_sprite_ext(sprIndicatorArrow, 0, x+lengthdir_x(400, direction_to_home), y+lengthdir_y(400, direction_to_home), 1, 1, direction_to_home, c_white, 0.4)
    }
    // nearest enemy indicator
    var direction_to_enemy, enemy_id ;
    enemy_id = instance_nearest(x, y, objPlayer1)
    if enemy_id > 0 // there is at least one enemy
    {
        direction_to_enemy = point_direction(x, y, enemy_id.x, enemy_id.y)
        if point_distance(x, y, enemy_id.x, enemy_id.y) > 1200
        {
            draw_sprite_ext(sprIndicatorArrow, 0, x+lengthdir_x(400, direction_to_enemy), y+lengthdir_y(400, direction_to_enemy), 1, 1, direction_to_enemy, c_red, 0.2)
        }
    }
} 
