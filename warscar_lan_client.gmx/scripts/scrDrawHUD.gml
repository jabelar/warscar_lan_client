/// scrDrawHUD()
// must be called from controller's draw event

draw_set_font(fontMilitaryStencil)
switch room
{
    case roomGame:
    {
        if view_current = 0
        {
            draw_set_color(c_black)
            draw_rectangle(view_xview[0]+view_wview[0]-5, view_yview[0], view_xview[0]+view_wview[0], view_yview[0]+view_hview[0], false)
        }
        if view_current = 1
        {
        }
        break ;
    }
    default:
    {
        break ;
    }
}
