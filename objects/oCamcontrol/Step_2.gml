if (instance_exists(oFollowMouse))
{
var _x = clamp(oFollowMouse.x-view_width/2,0,room_width-view_width);
var _y = clamp(oFollowMouse.y-view_height/2,0,room_height-view_height);

var _cur_x = camera_get_view_x(camera);
var _cur_y = camera_get_view_y(camera);

var _spd = 0.1;
camera_set_view_pos(camera,lerp(_cur_x,_x,_spd),lerp(_cur_y,_y,_spd));

}

camera_x = camera_get_view_x(camera);
camera_y = camera_get_view_y(camera);
camera_w = camera_get_view_width(camera);
camera_h = camera_get_view_height(camera);

if !(status_fade == "none")
{
#region Screen fade to black

if (status_fade == "start")
{
room_fade += fade_speed;
if (room_fade >= 1)
{ room_fade = 1; room_goto(next_room); }
}

#endregion

#region Screen fade out of black

if (status_fade == "end")
{
room_fade -= fade_speed;
if (room_fade <= 0)
{ room_fade = 0; status_fade = "none"; }
}

#endregion
}

#region Parallax Scrolling

//layer_x("bkg_sky",camera_x*0.25);
//Change the layer name to whatever your background layer is
//Change the *number to however fast you want the background to move
//Duplicate code for as many backgrounds as you want ^-^

#endregion

#region Shake

/*
if (shake)
{
var ran_x = random_range(-10,10);
var ran_y = random_range(-10,10);
obj_player.x = shakex+ran_x;
obj_player.y = shakey+ran_y;
camera_set_view_pos(camera,shakex+ran_x,shakey+ran_y);
}

/*
if (shake)
	{
    shakeDur --;
    camera_set_view_pos(camera,choose(-shakeForce,shakeForce),choose(-shakeForce,shakeForce));
    camera_y += choose(-shakeForce,shakeForce);
    if(shakeDur <= 0){
        shake = false;
        shakeDur = 5;
    }
}else{
    camera_x = approach(camera_x,0,0.3);
    camera_y = approach(camera_y,0,0.3);
}

/*
if(shake){
    shakeDur --;
    camera_set_view_pos(camera,camera_x+choose(-shakeForce,shakeForce),camera_y);
    camera_set_view_pos(camera,camera_x,camera_y+choose(-shakeForce,shakeForce));
    if(shakeDur <= 0){
        shake = false;
        shakeDur = 5;
    }
}else{
    camera_set_view_pos(camera,approach(camera_x,0,0.3),camera_y);
    camera_set_view_pos(camera,camera_x,approach(camera_y,0,0.3));
}
*/

#endregion