/// @description Stage Button Left Mouse Pressed.
// Button pressed?
if (!image_index) {
	// Yes, Set button to pressed.
	button_pressed = true;

	// Play clicked sound.
	audio_play_sound(snd_ui_click, 0, false);
} else {
	// Play error sound.
	audio_play_sound(snd_button_error, 0, false);
}

