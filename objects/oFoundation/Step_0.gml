scGenFoundation();

if (place_meeting(mouse_x, mouse_y, oFoundation))
{
	instance_create_layer(mouse_x, mouse_y, "Instances", oWall);
}
