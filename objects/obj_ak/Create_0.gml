owner = obj_Player;

automatic = false;
projectile = -1;
cooldown = 0;
startup = 0;
length = 0;
bulletspeed = 0;
recoil_push = 0;
recoil = 0;

current_cd = 0;
current_delay = 0;
current_recoil = 0;
weapon = 0;

//Unarmed
weapons[0] = ds_map_create();
ds_map_add(weapons[0], "sprite", -1);
ds_map_add(weapons[0], "recoil", 0);
ds_map_add(weapons[0], "recoil_push", 0);
ds_map_add(weapons[0], "damage", 0);
ds_map_add(weapons[0], "projectile", -1);
ds_map_add(weapons[0], "startup", 0);
ds_map_add(weapons[0], "length", 0);
ds_map_add(weapons[0], "cooldown", 0);
ds_map_add(weapons[0], "bulletspeed", 0);
ds_map_add(weapons[0], "automatic", false);

//AK-47
weapons[1] = ds_map_create();
ds_map_add(weapons[1], "sprite", spr_ak);
ds_map_add(weapons[1], "recoil", 3);
ds_map_add(weapons[1], "recoil_push", 0);
ds_map_add(weapons[1], "damage", 3);
ds_map_add(weapons[1], "projectile", obj_bullet1);
ds_map_add(weapons[1], "startup", 0);
ds_map_add(weapons[1], "length", 24);
ds_map_add(weapons[1], "cooldown", 3);
ds_map_add(weapons[1], "bulletspeed", 0);
ds_map_add(weapons[1], "automatic", false);

//Uzi
weapons[2] = ds_map_create();
ds_map_add(weapons[2], "sprite", spr_uzi);
ds_map_add(weapons[2], "recoil", 1);
ds_map_add(weapons[2], "recoil_push", 0.5);
ds_map_add(weapons[2], "damage", 1);
ds_map_add(weapons[2], "projectile", obj_bullet1);
ds_map_add(weapons[2], "startup", 0);
ds_map_add(weapons[2], "length", 24);
ds_map_add(weapons[2], "cooldown", 0.5);
ds_map_add(weapons[2], "bulletspeed", 7);
ds_map_add(weapons[2], "automatic", true);

weapon = 0;
ammo[array_length(weapons) - 1] = 0;
ammo[0] = -1;

ChangeWeapon(0);