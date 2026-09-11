// Camera follow player
cam = view_camera[0];
camera_set_view_pos(cam, 0, y - camera_get_view_height(cam) / 2 - camera_get_view_height(cam) / 4)

// Player movement
if (keyboard_check(vk_up)){
	velocity += acceleration;
}

if (keyboard_check(vk_down)){
	velocity -= acceleration;
}

// Turning should change the wheel rotation not the car rotation
if (keyboard_check(vk_left)){
	x -= 3
	image_angle += .25
}

if (keyboard_check(vk_right)){
	x += 3
	image_angle -= .25
}

//x += lengthdir_x(velocity, image_angle);
//y += lengthdir_y(velocity, image_angle);
velocity = clamp(velocity, 0, maxSpeed);
