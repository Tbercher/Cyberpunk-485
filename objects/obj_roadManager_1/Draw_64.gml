if (alarm[0] > 0) {
    var display_time = ceil(alarm[0] / 60);
    draw_text(32, 32, "Time Left Until Traffic Jam Clears: " + string(display_time));
}