// Wall collision and movement with axis-independent sliding
var move_x = -lengthdir_x(velocity, image_angle) + crashVelocityX;
var move_y = -lengthdir_y(velocity, image_angle) + crashVelocityY;

if (!place_meeting(x + move_x, y, obj_wall)) {
    x += move_x;
} else {
    velocity = 0;
    crashVelocityX = 0;
}

if (!place_meeting(x, y + move_y, obj_wall)) {
    y += move_y;
} else {
    velocity = 0;
    crashVelocityY = 0;
}

crashVelocityX *= 0.9;
crashVelocityY *= 0.9;
if (abs(crashVelocityX) < 0.001) {
    crashVelocityX = 0;
}
if (abs(crashVelocityY) < 0.001) {
    crashVelocityY = 0;
}

