if (instance_exists(obj_scoreboard)) {
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    draw_set_font(-1);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    gpu_set_texfilter(false);
    draw_text_transformed(
        gui_width / 2,
        gui_height * 0.75,
        "Score: " + string(round(obj_scoreboard.floatScore)),
        3,
        3,
        0
    );
    gpu_set_texfilter(true);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}