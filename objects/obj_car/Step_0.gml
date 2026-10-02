x -= lengthdir_x(velocity, image_angle);
y -= lengthdir_y(velocity, image_angle);

velocity = clamp(velocity, 0, maxSpeed);

