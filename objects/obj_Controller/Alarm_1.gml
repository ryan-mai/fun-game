alarm[1] = alarmSpawnTime;

if (instance_exists(obj_Upgrade)) { exit; }

var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 120, _vy - 120, _vw + 120, _vh + 120, 1);
instance_deactivate_region(_vx - 170, _vy - 170, _vw + 170, _vh + 170, 0, 1);

var w1 = 100;
var w2 = clamp((obj_Player.level - 2) * 10, 0, 50);
var w3 = clamp((obj_Player.level - 5) * 5,  0, 30);
var w4 = clamp((obj_Player.level - 10) * 2, 0, 15);

var total_weight = w1 + w2 + w3 + w4;

var roll = random(total_weight);

var enemy_to_spawn = obj_Enemy_1;

if (roll < w4) {
    enemy_to_spawn = obj_Enemy_4;
} else if (roll < (w4 + w3)) {
    enemy_to_spawn = obj_Enemy_3;
} else if (roll < (w4 + w3 + w2)) {
    enemy_to_spawn = obj_Enemy_2;
} else {
    enemy_to_spawn = obj_Enemy_1;
}

var dir = irandom_range(0, 360);
var XX = obj_Player.x + lengthdir_x(220, dir);
var YY = obj_Player.y + lengthdir_y(220, dir);

instance_create_layer(XX, YY, "Instances", enemy_to_spawn);