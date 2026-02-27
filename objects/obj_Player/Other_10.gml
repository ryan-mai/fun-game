if (instance_exists(obj_Upgrade)) { exit; }

var slash = instance_create_layer(x, y, "Instances", obj_Slash_1);
	slash.image_xscale = image_xscale;
	slash.offsetY = -2;
		if (image_xscale == 1) { 
			slash.offsetX = 5; 
			slash.image_angle = -100;
		}
		else if (image_xscale == -1) { 
			slash.offsetX = -5; 
			slash.image_angle = 90;	
		}