// Camera follow player
cam = view_camera[0];
camera_set_view_pos(cam, 0, y - camera_get_view_height(cam) / 2 - camera_get_view_height(cam) / 4)

// Player movement
if (keyboard_check(vk_up)){
	vspeed -= .1	
}

if (keyboard_check(vk_down)){
	vspeed += .2	
}

if (keyboard_check(vk_left)){
	x -= 3
	image_angle -= 1.5
}

if (keyboard_check(vk_right)){
	x += 3
	image_angle += 1.5
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
	//image_angle -= sign(image_angle) * 1.5;
	image_angle = approach(image_angle, 0, .5);
}

