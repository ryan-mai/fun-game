if (level >= max_rounds) {
    show_message("You Won! Time to play again...");
    game_restart();
}
if (hp <= 0) {
	room_restart();
}

if (instance_exists(obj_Upgrade)) { 
	image_speed = 0;
	exit;
}

var _enemy = instance_place(x, y , obj_Enemy_Parent);
if (_enemy != noone && can_be_hit) {
	hp -= _enemy.damage;
	can_be_hit = false;
	alarm[3] = hit_delay;
	image_blend = c_red;
}

//image_speed = 1;
var haxis = (CheckInput(keys_right) - CheckInput(keys_left)) + gamepad_axis_value(0, gp_axislh);
var vaxis = (CheckInput(keys_down) - CheckInput(keys_up)) + gamepad_axis_value(0, gp_axislv);

haxis = clamp(haxis, -1, 1);
vaxis = clamp(vaxis, -1, 1);

if (haxis != 0 || vaxis != 0) {
	var _dir = point_direction(0, 0, haxis, vaxis);
	hsp = lengthdir_x(playerSpeed, _dir);
	vsp = lengthdir_y(playerSpeed, _dir);
	
	image_speed = 1;
	if (haxis != 0) image_xscale = sign(haxis);
} else {
	hsp = 0;
	vsp = 0;
	image_speed = 0;
	image_index = 1;
}

x += hsp;
y += vsp;

x = round(x);
y = round(y);

move_wrap(true, true, sprite_width / 2);
