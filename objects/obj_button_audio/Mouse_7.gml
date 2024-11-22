/// @description Audio Button Left Mouse Released.
// Was audio button pressed?
if (image_index) {	
	// Yes, Volume muted?
	if (audio_play) {
		// No, Mute volume.
		audio_set_master_gain(0, false);
	} else {
		// Yes, Restore volume.
		audio_set_master_gain(0, global.audio_volume);
	}

	// Toggle audio play state.
	audio_play = !audio_play;

	// Audio button released.
	image_index = false;
}

