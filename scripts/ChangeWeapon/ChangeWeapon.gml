function ChangeWeapon(_index) {
	weapon = _index;
	var wp_map = weapons[weapon];
	sprite = wp_map[? "sprite"];
	recoil = wp_map[? "recoil"];
	recoil_push = wp_map[? "recoil_push"];
	damage = wp_map[? "damage"];
	projectile = wp_map[? "projectile"];
	startup = wp_map[? "startup"];
	length = wp_map[? "length"];
	cooldown = wp_map[? "cooldown"];
	bulletspeed = wp_map[? "bulletspeed"];
	automatic = wp_map[? "automatic"];
}