var explosion = instance_create_layer(x, y, "Instances", obj_Explode_1);
var _theta = random(360);
var _dist = irandom_range(40, 60);

explosion.gravity = 0.1;
explosion.friction = 0.01;
explosion.speed = 3;
explosion.direction = _theta;

explosion.start_x = x;
explosion.start_y = y;
explosion.max_dist = _dist;
	