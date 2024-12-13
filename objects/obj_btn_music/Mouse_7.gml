/// @description Music Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Toggle play music state.
	global.play_music = !global.play_music;
	audio_sound_gain(global.music, global.play_music, 500); // Ignore feather.

	// Music button released.
	image_index = false;
}

