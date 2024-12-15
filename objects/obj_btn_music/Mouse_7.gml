/// @description Music Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Toggle play music state.
	global.play_music = !global.play_music;
	/// Feather ignore once GM1041
	audio_sound_gain(global.music, global.play_music, 500);

	// Music button released.
	image_index = false;
}

