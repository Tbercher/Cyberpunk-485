event_inherited();
obj_rewindController.gameStates.objects[$ string(real(id))] = ["x", "y", "image_angle", "velocity", "active"];
velocity = obj_player.velocity;
acceleration = obj_player.acceleration;
maxSpeed = obj_player.maxSpeed;
image_angle = obj_player.image_angle;
active = true;
follow_offset_x = x - obj_player.x;
follow_offset_y = y - obj_player.y;

//sire audio
siren_sfx = audio_play_sound(sfx_siren, 1, true);
audio_pause_sound(siren_sfx);