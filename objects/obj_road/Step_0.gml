var bottom_limit = room_height;
if (view_enabled && view_visible[0]) {
    bottom_limit = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
}

if (y >= bottom_limit + sprite_height) {
    y -= sprite_height * instance_number(obj_road);
}