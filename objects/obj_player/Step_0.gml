// Camera follow player
cam = view_camera[0]
camera_set_view_pos(cam, x - camera_get_view_width(cam) / 2, y - camera_get_view_height(cam) / 2)

// Player movement
if (keyboard_check(vk_up)){
	vspeed -= .1	
}