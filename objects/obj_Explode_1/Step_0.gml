event_inherited();
dmg = obj_Player.Damage_Axe;
var current_dist = point_distance(x, y, start_x, start_y);

if (current_dist >= max_dist) {
	speed = 0;
	gravity = 0;
	friction = 0;
}