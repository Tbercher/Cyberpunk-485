draw_text(30, 20, "Score: " + string(round(floatScore)));
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
else {
    if (global.gameOver) {
        draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Game Over");
    }
}