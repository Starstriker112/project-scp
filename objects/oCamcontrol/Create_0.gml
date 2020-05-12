#region Fade

fade_speed = 0.05;
status_fade = "none";
room_fade = 1;
next_room = room;

#endregion

/*
///Set camera position to player (Can be custom too)
with(obj_camcontrol)
{ camera_set_view_pos(camera,obj_player.x-view_width/2,obj_player.y-view_height/2); }
//step event show_debug_message(string(camera_x) + " " + string(camera_y))
*/

zoom = 2;

view_width = 640*zoom;
view_height = 360*zoom;

var dispw = display_get_width();
var disph = display_get_height();
var final_w = 1;
var final_h = 1;
//show_debug_message(string(dispw)+" screen res");
for (var i = 1; view_width*i < dispw; i++)
{ /*show_debug_message(string(view_height*i));*/ final_w += 1; }

for (var i = 1; view_height*i < disph; i++)
{ /*show_debug_message(string(view_height*i));*/ final_h += 1; }


window_scale = min(final_w,final_h);
//show_debug_message(string(final_w))
//show_debug_message(string(window_scale*view_width))
//show_debug_message(string(window_scale))

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);
display_set_gui_maximize();
display_set_gui_size(view_width,view_height);
//window_set_fullscreen(true);

#macro camera view_camera[0]

view_enabled = true;
view_set_visible(0,true);

camera_x = camera_get_view_x(camera);
camera_y = camera_get_view_y(camera);
camera_w = camera_get_view_width(camera);
camera_h = camera_get_view_height(camera);

screen_w = surface_get_width(application_surface);
screen_h = surface_get_height(application_surface);

/*
///Screen shake
shakex = camera_x;
shakey = camera_y;
shake = false;