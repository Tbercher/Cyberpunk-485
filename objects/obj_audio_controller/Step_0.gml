//apply master volume control
audio_master_gain(global.volume);

if (room == Room_mainMenu && !music_started) {
	audio_stop_all()
    audio_sound_gain(bgm_mainMenu, 0, 0);
    audio_play_sound(bgm_mainMenu, 1, true);
    audio_sound_gain(bgm_mainMenu, 0.75, 2000);
    music_started = true;
}
if (room == Room_options && music_started) {
	audio_sound_gain(bgm_1, 0, 1500); //fade out over 1.5 seconds
    audio_sound_gain(bgm_2, 0, 1500);
	audio_sound_gain(bgm_mainMenu, 0, 1500);
    music_started = false;
}
if (room == Room1 && !music_started) {
	audio_stop_all()
    audio_sound_gain(bgm_2, 0, 0);
    audio_play_sound(bgm_2, 1, true);
    audio_sound_gain(bgm_2, 0.50, 2000);
    music_started = true;
}
if (room == Room1_1 && !music_started) {
	audio_stop_all()
    audio_sound_gain(bgm_1, 0, 0);
    audio_play_sound(bgm_1, 1, true);
    audio_sound_gain(bgm_1, 0.75, 2000);
    music_started = true;
}

if (room != Room1 && room != Room1_1 && room != Room_mainMenu && music_started) {
    audio_sound_gain(bgm_1, 0, 1500); //fade out over 1.5 seconds
    audio_sound_gain(bgm_2, 0, 1500);
	audio_sound_gain(bgm_mainMenu, 0, 1500);
    music_started = false;
}