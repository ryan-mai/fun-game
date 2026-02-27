function PlayerAnimation(_is_moving){
	if (_is_moving) image_speed = 5;
	else {
		image_speed = 0;
		image_index = 0;
	}
}