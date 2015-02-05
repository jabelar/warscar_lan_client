draw_self()
draw_sprite_ext(sprWeaponHuskyBlue, image_number, x, y, image_xscale, image_yscale, image_angle+objController.turret_image_angle[1], image_blend, image_alpha)

show_debug_message("Drawing player 2 at x = "+string(x)+" y = "+string(y)+" with turret angle = "+string(image_angle+objController.turret_image_angle[1]))
