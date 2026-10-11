//increase speed of player
other.isBoosted = true;
other.velocity = -other.maxSpeed * other.boostMultiplier;
other.alarm[1] = game_get_speed(gamespeed_fps) * 3;