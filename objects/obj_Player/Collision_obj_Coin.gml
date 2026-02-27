if (instance_exists(obj_Upgrade)) { exit; }
xp += 1;
if (xp >= xpNext) {
	xp = 0;
	xpNext *= 1.2;
	level += 1;
	var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
	var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
	
	var a = instance_create_depth(_vx, _vy, -2000, obj_Upgrade);
		a.finalY = _vy;
		a.image_alpha = 1;
		a.sprite_index = spr_slash_btn;
	var b = instance_create_depth(_vx, _vy, -2000, obj_Upgrade);
		b.finalY = _vy - 35;
		b.image_alpha = 1;
		b.sprite_index = spr_axe_btn;
	var c = instance_create_depth(_vx, _vy, -2000, obj_Upgrade);
		c.finalY = _vy + 35;
		c.image_alpha = 1;
		c.sprite_index = spr_explode_btn;
}
instance_destroy(other.id);
