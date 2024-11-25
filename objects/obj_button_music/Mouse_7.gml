/// @description Music Button Left Mouse Released.
// Was button pressed?
if (image_index) {	
	// Yes, Music enabled?
	if (global.play_music) {
		// Yes, Disable music.
		audio_stop_sound(global.music);
		show_debug_message("Mute button disabled music.");
	} else {
		// Yes, Restore music.
		audio_play_sound(global.music, 0, true);
		show_debug_message("Mute button enabled music.");
	}

	// Toggle play music state.
	global.play_music = !global.play_music;

	// Music button released.
	image_index = false;
}

