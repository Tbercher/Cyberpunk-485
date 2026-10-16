if (global.gameOver) {
    var center_x = display_get_gui_width() / 2;
    var center_y = display_get_gui_height() / 2;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(center_x, center_y, "Your final score was");
    draw_text(center_x, center_y + 30, string(global.final_score));

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
