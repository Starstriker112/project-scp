var buildplace = false;
var buildplaceoverlay = draw_set_color(c_red);

if (place_empty(obj_grid.x, obj_grid.y, oGridSquare))
{
	buildplace = true;
	buildplaceoverlay = draw_set_color(c_green);
}


