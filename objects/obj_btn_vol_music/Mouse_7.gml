/// @description Music Volume Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Increase volume?
	if (button_text == ">") {
		// Yes.
		global.vol_music++;
	} else {
		// No.
		global.vol_music--;
	}
	global.vol_music_gain = global.gain[global.vol_music - 1];
	audio_sound_gain(global.music, global.vol_music_gain, 0);

	
	// Set button released.
	image_index = false;
}

