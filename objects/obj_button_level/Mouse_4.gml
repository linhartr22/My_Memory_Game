/// @description Level Button Left Mouse Pressed.
// Quit button pressed?
if (!global.button_disable && !global.locked_level[level - 1]) {
	// Set level button pressed.
	image_index = true;

	// Play clicked sound.
	audio_play_sound(snd_ui_click, 0, false);
} else {
	// Play error sound.
	audio_play_sound(snd_button_error, 0, false);
}

