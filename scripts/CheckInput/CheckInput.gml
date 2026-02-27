function CheckInput(_keys_array){
	for (var i = 0; i < array_length(_keys_array); i++) {
		if (keyboard_check(_keys_array[i])) return true;
	}
	return false;
}
