event_inherited();

velocity = 0;
acceleration = acceleration;
maxSpeed = maxSpeed;
image_angle = 90;
camera_initiated = false;
healthPercent = 100;
policed = false;
policeTimer = game_get_speed(gamespeed_fps) * 5;
active = true;
isBoosted = false;
yLimit = y;

instance_create_layer(x, y, "Instances", obj_controlsNotification);
