event_inherited();

velocity = 0;
acceleration = .1;
maxSpeed = 8;
image_angle = 90;
camera_initiated = false;
healthPercent = 100;


//prevent wall collision
function move_with_collision(hsp, vsp) {
	wall_offset = 40;
    var new_x = x + hsp;
    var new_y = y + vsp;
    //horizontal collision
    if (!place_meeting(new_x + sign(hsp) * wall_offset, y, obj_wall_level2)) {
        x = new_x;
    } else {
        while (!place_meeting(x + sign(hsp) * wall_offset, y, obj_wall_level2)) {
            x += sign(hsp);
        }
    }

    //vertical collision with offset
    if (!place_meeting(x, new_y + sign(vsp) * wall_offset, obj_wall_level2)) {
        y = new_y;
    } else {
        while (!place_meeting(x, y + sign(vsp) * wall_offset, obj_wall_level2)) {
            y += sign(vsp);
        }
    }
}