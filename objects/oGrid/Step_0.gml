if (creating) { 
	instance_destroy(oGridSquare);
	box_width = abs(current_x - initial_x);
	box_height = abs(current_y - initial_y);
	grid_width = floor(box_width / 64);
	grid_height = floor(box_height / 64);
	placing_y = initial_y;
	for (i = 0; i < grid_height; i++) {
		placing_x = initial_x;
		for (j = 0; j < grid_width; j++) {
			placing_x += sign(current_x - initial_x) * 64;
			instance_create_layer(placing_x, placing_y, "Instances", oGridSquare);
		}
		placing_y += sign(current_y - initial_y) * 64;
	}
}