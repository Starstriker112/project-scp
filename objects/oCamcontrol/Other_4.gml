camera_set_view_size(camera,view_width,view_height);

view_enabled = true;
view_visible[0] = true;

view_set_camera(0,camera);

//status_fade = "end";

#region Movable code

camera_x = camera_get_view_x(camera);
camera_y = camera_get_view_y(camera);
camera_w = camera_get_view_width(camera);
camera_h = camera_get_view_height(camera);

screen_w = surface_get_width(application_surface);
screen_h = surface_get_height(application_surface);

/*
The code in this region should stay here
Unless you know it will change and the changed value will be used later in the room
In that case, update it whenever you need to (such as putting it in the step event or an alarm)

Example: You know the view's x position will change, but not the y.
You could move the camera_x update to the step event, but camera_y's update could stay here.
*/

#endregion