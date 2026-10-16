if (!policed){
	var radius = 200;
	var nearby_car = collision_circle(x, y, radius, obj_enemy1, false, true);
	if (nearby_car != noone) {
		nearby_car.y += 600;
	}
	instance_create_layer(x+120, y-100, "Instances", obj_policeCar);
	instance_create_layer(x, y-200, "Instances", obj_policeCar);
	instance_create_layer(x-120, y-100, "Instances", obj_policeCar);
    policeTimer = game_get_speed(gamespeed_fps) * 5;
	policed = true;
	
}