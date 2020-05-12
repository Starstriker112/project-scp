
buildplace = false;
var buildplaceoverlay = draw_set_color(c_red);

if (place_empty(mouse_x, mouse_y, oGridSquare))
{
	buildplace = true;
	buildplaceoverlay = draw_set_color(c_green);
}
else
{
	buildplace = false;
	buildplaceoverlay = draw_set_color(c_red);
}

tiles = 5;

build_get_size = array_create(3, tiles);

if (build_get_size < tiles)
{
	tiles += 2;
}
else 
{
	build_get_size = tiles;
}

