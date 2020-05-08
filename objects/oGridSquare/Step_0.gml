if (!spacePopulated) {
	if (beginAnimate) {
		if (image_index < 2) {
			image_index++;
		}else {
			beginAnimate = false;
		}
	}else if (endAnimate) {
		if (image_index > 0) {
			image_index--;
		}else {
			endAnimate = false;
		}
	}
}else {
	image_index = 3;
}