if (keyboard_check_pressed(vk_escape)){
    isPaused = !isPaused;
    
    if (isPaused) {
        var _w = surface_get_width(application_surface);
        var _h = surface_get_height(application_surface);
        pause_sprite = sprite_create_from_surface(application_surface, 0, 0, _w, _h, false, false, 0, 0);

        instance_deactivate_all(true);
        instance_activate_object(obj_pause);

        //center
        var cx = display_get_gui_width() / 2;
        var cy = display_get_gui_height() / 2;

        slider_volume = instance_create_layer(cx - 100, cy, "Instances", obj_volumeSlider);
        btn_fullscreen = instance_create_layer(cx - 100, cy + 60, "Instances", obj_fullscreenToggle_Button);
        btn_quit = instance_create_layer(cx - 100, cy + 160, "Instances", obj_quit_button);

        instance_activate_object(obj_volumeSlider);
        instance_activate_object(obj_fullscreenToggle_Button);
        instance_activate_object(obj_quit_button);

    } else {
        if (instance_exists(slider_volume)) instance_destroy(slider_volume);
        if (instance_exists(btn_fullscreen)) instance_destroy(btn_fullscreen);
        if (instance_exists(btn_quit)) instance_destroy(btn_quit);

        pause_sprite = -1;
        instance_activate_all();
    }
}
