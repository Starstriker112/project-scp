if (place_free(mouse_x, mouse_y) && buildplace = true)))
{
	draw_self();
	instance_create_layer(x,y,"Instances", oWall);
}
else
{
	!draw_self();
	!instance_create_layer(x,y,"Instances", oWall)
}
