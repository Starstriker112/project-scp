///@description Fade
if !(status_fade == "none")
{
draw_set_alpha(room_fade);
draw_rectangle_color(0,0,screen_w,screen_h,c_black,c_black,c_black,c_black,false);
}
draw_set_alpha(1);