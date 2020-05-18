if (place_meeting(oGrid.x, oGrid.y, oGrid) && mouse_check_button(mb_right))
{
	instance_create_layer(mouse_x, mouse_y, "Instances", oWall);
	time_left = 200;
}
else
{
	if (time_left = 0 && mouse_check_button(mb_right))
	{
		instance_create_layer(mouse_x, mouse_y, "Instances", oWall)
	}
}

if (place_meeting(oWall.x, oWall.y, oWall))
{
	buildplace = false;
	draw_text(mouse_x, mouse_y, "You can't build here")
}
else
{
	buildplace = true;
}

