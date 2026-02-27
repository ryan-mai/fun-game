keys_left  = [vk_left,  ord("A")];
keys_right = [vk_right, ord("D")];
keys_up    = [vk_up,    ord("W")];
keys_down  = [vk_down,  ord("S")];

playerSpeed = 2;

gamepad_set_axis_deadzone(0, 0.2);

alarmtime[0] = 80;
alarmtime[1] = 120;
alarmtime[2] = 60;

alarm[0] = alarmtime[0];
alarm[1] = alarmtime[1];
alarm[2] = alarmtime[2];

slot[0] = "slash";
slot[1] = "axe";
slot[2] = "explosion";

Damage_Slash = 3;
Damage_Axe = 1;
Damage_Explosion = 2;

collectRadius = 50;

xp = 0;
xpNext = 4;
level = 1;

hp = 100;
can_be_hit = true;
hit_delay = 30; // Every 0.5s bc 60 fps