// Player movement
if (keyboard_check(vk_up)){
	velocity -= acceleration;
}

if (keyboard_check(vk_down)){
	velocity += acceleration;
}

if (keyboard_check(vk_left)){
	image_angle += turnRate;
}

if (keyboard_check(vk_right)){
	image_angle -= turnRate;
}

if (isBoosted){
	sprite_index = PlayerCarPowered2;
}
else{
	sprite_index = PlayerCar2;
}

yChange = lengthdir_y(velocity, image_angle);

if (instance_exists(obj_scoreboard)){
	
	if (yChange > 0){
		obj_scoreboard.floatScore += yChange / 100;
	}
}

if (policed) {
	policeTimer--;
}

if (policeTimer <= 0){
	for (var i = instance_number(obj_policeCar)-1; i >= 0; i--){
		var police_car = instance_find(obj_policeCar, i);

        police_car.active = false;
        police_car.visible = false;
        police_car.solid = false;
        police_car.mask_index = -1;
        police_car.alarm[0] = 180;
}
	global.invincibility = false;
	policed = false;
}

x -= lengthdir_x(velocity, image_angle);
y -= yChange;

if (y < -300){
	if (yChange > 0) {
		yLimit = y + 300;
	}
}


// Camera follow player
cam = view_camera[0];
camera_set_view_pos(cam, 0, y - camera_get_view_height(cam) / 2 - camera_get_view_height(cam) / 4);
camera_initiated = true;



//boost speed
if (isBoosted){
	velocity = clamp(velocity, -maxSpeed * boostMultiplier, 0);
}
else{
	velocity = clamp(velocity, -maxSpeed, 0);
}

yLimit = min(0, yLimit); // Extra insurance to make sure player can't go past the starting point
x = clamp(x, 400, 1000);
y = min(y, yLimit);
if (healthPercent < 100){
	healthPercent += .009;
}