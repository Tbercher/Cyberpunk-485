depth = 1;
image_xscale = 3;
if (random_range(0, 1) > 0.5){
	var building = instance_create_layer(x - (sprite_get_width(RoadStraight) * (3/4)), y - (sprite_get_height(RoadStraight)/2), "Instances", obj_building);
}
if (random_range(0, 1) > 0.5){
	var building = instance_create_layer(x + (sprite_get_width(RoadStraight) * (3/4)), y - (sprite_get_height(RoadStraight)/2), "Instances", obj_building);
}
