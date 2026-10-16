draw_text(60, 30, "Score: " + string(round(floatScore)));
if (instance_exists(obj_player)){
    draw_healthbar(
        display_get_gui_width() - 200,              // left
        50,              // top
        display_get_gui_width() - 120,             // right
        70,              // bottom
        obj_player.healthPercent,   // amount from 0 to 100
        c_black,         // background colour
        c_red,         // bar colour when health is low
        c_lime,           // bar colour
        0,               // direction: left to right
        true,            // draw background
        true             // draw border
    );
}
else { /*
    if (global.gameOver) {
		show_debug_message("Game over");
		room_goto(Room_gameOver);
        var center_x = display_get_gui_width() / 2;
        var center_y = display_get_gui_height() / 2;
        draw_text(center_x, center_y, "You survived traffic for");
        draw_text(center_x, center_y + 30, floatScore);
    } */
}