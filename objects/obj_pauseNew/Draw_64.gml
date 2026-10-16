if (isPaused) {
    var w = surface_get_width(application_surface);
    var h = surface_get_height(application_surface);

    draw_sprite(pause_sprite, 0, 0, 0);

    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(0, 0, w, h, false);

    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(w/2, h/2 - 100, "PAUSED");
}
