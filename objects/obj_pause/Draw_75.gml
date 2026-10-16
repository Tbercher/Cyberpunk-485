if (isPaused){
    var _w = surface_get_width(application_surface);
    var _h = surface_get_height(application_surface);

    if (pause_sprite == -1) {
        pause_sprite = sprite_create_from_surface(application_surface, 0, 0, _w, _h, false, false, 0, 0);
    }

    draw_sprite(pause_sprite, 0, 0, 0);
    show_debug_message(string(pause_sprite));
    //Draw darkness over pause sprite
    draw_set_color(c_black);
    draw_set_alpha(.75);
    draw_rectangle(0, 0, _w, _h, false);
    // Draw paused text
    draw_set_font(-1);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(_w / 2, _h / 2, "PAUSED");

    // Reset drawing settings
    draw_set_alpha(1);
    draw_set_color(c_white);
    //instance_deactivate_all(true);
    
}
else{
    pause_sprite = -1;
	//instance_activate_all();
}