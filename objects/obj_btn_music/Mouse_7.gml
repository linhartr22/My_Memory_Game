/// @description Music Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Toggle music gain.
	var _gain_tmp  = global.vol_music_gain;
	global.vol_music_gain = music_gain_last;
	music_gain_last = _gain_tmp;
	global.play_music = !global.play_music;
	/// Feather ignore once GM1041
	audio_sound_gain(global.music, global.vol_music_gain, 500);

	// Music button released.
	image_index = false;
}

