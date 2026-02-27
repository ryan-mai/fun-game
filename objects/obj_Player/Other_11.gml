if (instance_exists(obj_Upgrade)) { exit; }
var axe = instance_create_layer(x, y, "Instances", obj_Axe_1);
	axe.direction = irandom_range(45, 135);
	axe.speed = 4;
	axe.gravity = 0.1;
	axe.friction = 0.01;