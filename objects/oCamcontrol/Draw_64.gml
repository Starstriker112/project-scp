//scribble_draw(camera_w/2,camera_h/2,string(camera_x));
//scribble_draw(camera_w/2,camera_h/2+40,string(camera_y));
/*
if (global.gamespeed == 0)
{
draw_set_halign(fa_center);
draw_set_alpha(0.5);
draw_rectangle_color(view_xport[0],camera_y,camera_w,camera_h,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
scribble_draw(camera_w/2,camera_h/2,"Paused");
draw_sprite(spr_save_game,0,camera_w/2,camera_h/2+104);
draw_set_halign(fa_left);
}