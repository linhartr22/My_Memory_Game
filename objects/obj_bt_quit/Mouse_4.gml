/// @description Quit Button Left Click Pressed.
// Quit button already pressed?
if (!global.button_disable) {
	// No, Set quit button pressed.
	image_index = true;

	// Play click sound.
	audio_play_sound(snd_ui_close,0,false);	
}

