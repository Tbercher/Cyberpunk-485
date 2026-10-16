// 1. Inputs & Acceleration
if (keyboard_check(vk_up)){
    velocity -= acceleration;
}
if (keyboard_check(vk_down)){
    velocity += acceleration;
}
velocity = clamp(velocity, -maxSpeed, 0);

// 2. Turning
var new_angle = image_angle;
if (keyboard_check(vk_left))  new_angle += 2;
if (keyboard_check(vk_right)) new_angle -= 2;

//temp rotate mask
var old_angle = image_angle;
image_angle = new_angle;

if (!place_meeting(x, y, obj_wall)) {
    //Safe to rotate
    //keep new angle
} else {
    image_angle = old_angle;
}

// 3. Wall Collision & Movement (Axis-Independent Sliding)
var move_x = -lengthdir_x(velocity, image_angle);
var move_y = -lengthdir_y(velocity, image_angle);

//Bounce (0 = no bounce, 1 = full reverse)
var bounce = 10;

//X movement
if (!place_meeting(x + move_x, y, obj_wall)) {
    x += move_x;
} else {
    velocity = -velocity * bounce;
}

//y movement
if (!place_meeting(x, y + move_y, obj_wall)) {
    y += move_y;
} else {
    velocity = -velocity * bounce;
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

