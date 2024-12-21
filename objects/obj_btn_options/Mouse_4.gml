/// @description Options Button Left Mouse Pressed.
// Button pressed?
if (!global.buttons_locked) {
	// Yes, Set button to pressed.
	image_index = true;

	// Play clicked sound.
	audio_play_sound(snd_ui_click, 0, false, global.vol_effects_gain);
} else {
	// Play error sound.
	audio_play_sound(snd_btn_error, 0, false, global.vol_effects_gain);
}

