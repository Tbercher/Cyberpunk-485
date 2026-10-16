if (keyboard_check_pressed(vk_escape)) {
    isPaused = !isPaused;

    if (isPaused) {

        // 1. Capture screenshot BEFORE deactivation
        var w = surface_get_width(application_surface);
        var h = surface_get_height(application_surface);
        pause_sprite = sprite_create_from_surface(application_surface, 0, 0, w, h, false, false, 0, 0);

        // 2. Freeze game
        instance_deactivate_all(true);
        instance_activate_object(obj_pause); // keep pause object alive

        // 3. Spawn menu buttons
        var cx = display_get_gui_width() / 2;
        var cy = display_get_gui_height() / 2;

        slider_volume  = instance_create_layer(cx, cy - 60, "Instances", obj_volumeSlider);
        btn_fullscreen = instance_create_layer(cx, cy,       "Instances", obj_fullscreenToggle_Button);
        btn_quit       = instance_create_layer(cx, cy + 60,  "Instances", obj_quit_button);

        // 4. Activate the specific instances
        instance_activate_instance(btn_volume);
        instance_activate_instance(btn_fullscreen);
        instance_activate_instance(btn_quit);

    } else {

        // Destroy menu objects
        if (instance_exists(slider_volume)) instance_destroy(slider_volume);
        if (instance_exists(btn_fullscreen)) instance_destroy(btn_fullscreen);
        if (instance_exists(btn_quit)) instance_destroy(btn_quit);

        pause_sprite = -1;
        instance_activate_all();
    }
}
