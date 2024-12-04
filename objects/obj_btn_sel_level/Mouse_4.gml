/// @description Level Button Left Mouse Pressed.
// Button pressed?
if (!global.button_disable && !global.locked_levels[level - 1]) {
	// Yes, Set button to pressed.
	image_index = true;

	// Play clicked sound.
	audio_play_sound(snd_ui_click, 0, false);
} else {
	// Play error sound.
	audio_play_sound(snd_btn_error, 0, false);
}

