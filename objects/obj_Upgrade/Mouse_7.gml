if (state == "idle") {
	with (obj_Upgrade) {
		state = "go away";
	}
	image_blend = c_green;
	
	if (sprite_index == spr_slash_btn) { obj_Player.Damage_Slash += 0.25; }
	if (sprite_index == spr_axe_btn) { obj_Player.Damage_Axe += 0.15; }
	if (sprite_index == spr_explode_btn) { obj_Player.Damage_Explosion += 0.1; }
	
	obj_Enemy_Parent.hp += 100;
	obj_Enemy_Parent.damage += 3;

}