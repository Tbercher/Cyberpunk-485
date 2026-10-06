x -= lengthdir_x(velocity, image_angle);
y -= lengthdir_y(velocity, image_angle);

velocity = clamp(velocity, 0, maxSpeed);

x += crashVelocityX;
y += crashVelocityY;
crashVelocityX *= 0.9;
crashVelocityY *= 0.9;
if (abs(crashVelocityX) < 0.001) {
    crashVelocityX = 0;
}
if (abs(crashVelocityY) < 0.001) {
    crashVelocityY = 0;
}

