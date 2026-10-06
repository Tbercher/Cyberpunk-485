// Player movement
if (keyboard_check(vk_up)){
	velocity -= acceleration;
}

if (keyboard_check(vk_down)){
	velocity += acceleration;
}

if (keyboard_check(vk_left)){
	image_angle += 1
}

if (keyboard_check(vk_right)){
	image_angle -= 1
}
if (instance_exists(obj_scoreboard)){
	yChange = lengthdir_y(velocity, image_angle);
	if (yChange > 0){
		obj_scoreboard.floatScore += yChange / 100;
	}
}
x -= lengthdir_x(velocity, image_angle);
y -= yChange;
velocity = clamp(velocity, -maxSpeed, 0);

// Camera follow player
cam = view_camera[0];
camera_set_view_pos(cam, 0, y - camera_get_view_height(cam) / 2 - camera_get_view_height(cam) / 4);
camera_initiated = true;
