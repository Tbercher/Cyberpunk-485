if (level_duration_seconds > 0) {
	draw_set_colour(c_white);
	draw_text(32, 30, "Time Left: " + string(ceil(alarm[0] / 60)));
}