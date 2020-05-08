//system builder grid creation
	//defining grid size
gridSizeX = 15;
gridSizeY = 10;
	//defining coordinate origin of grid
originX = (window_get_width() / 2) - (gridSizeX * 32);
originY = (window_get_height() / 2) - (gridSizeY * 32);
currentX = originX;
currentY = originY;
	//forming grid
for (i = 0; i < gridSizeY; i++) {
	currentX = originX
	for (j = 0; j < gridSizeX; j++) {
		currentX += 64;
		instance_create_layer(currentX, currentY, "Instances", oGridSquare);
	}
	currentY += 64;
}