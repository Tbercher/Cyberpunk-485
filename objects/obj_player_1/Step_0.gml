// 1. Inputs & Acceleration
if (keyboard_check(vk_up)){
	velocity -= acceleration;
}

if (keyboard_check(vk_down)){
	velocity += acceleration;
}

// 2. Turning
if (keyboard_check(vk_left)){
	image_angle += 2;
}

if (keyboard_check(vk_right)){
	image_angle -= 2;
}

velocity = clamp(velocity, -maxSpeed, 0);

// 3. Wall Collision & Movement (Axis-Independent Sliding)
var move_x = -lengthdir_x(velocity, image_angle);
var move_y = -lengthdir_y(velocity, image_angle);

if (!place_meeting(x + move_x, y, obj_wall)) {
    x += move_x;
} else {
    velocity = 0;
}

if (!place_meeting(x, y + move_y, obj_wall)) {
    y += move_y;
} else {
    velocity = 0;
}

// 4. Camera Follow Player
cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
camera_set_view_pos(cam, x - (cam_w / 2), y - (cam_h / 2));

// 5. Dynamic Camera Rotation
var current_zone = instance_place(x, y, obj_camera_zone);
if (current_zone != noone) {
    target_cam_angle = current_zone.road_angle;
}

var angle_diff = angle_difference(target_cam_angle, cam_angle);
cam_angle += angle_diff * 0.05;

camera_set_view_angle(cam, cam_angle);