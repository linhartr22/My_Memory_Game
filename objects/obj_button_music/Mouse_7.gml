/// @description Music Button Left Mouse Released.
// Was music button pressed?
if (image_index) {	
	// Yes, Music enabled?
	if (play_music) {
		// Yes, Disable music.
		audio_stop_sound(snd_music_menu);
		show_debug_message("Mute button disabled music.");
	} else {
		// Yes, Restore music.
		audio_play_sound(snd_music_menu, 0, true);
		show_debug_message("Mute button enabled music.");
	}

	// Toggle play music state.
	play_music = !play_music;

	// Music button released.
	image_index = false;
}

