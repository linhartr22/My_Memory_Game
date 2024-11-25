/// @description Quit Button Left Click Released.
// Button disabled?
if (!global.button_disable) {
	// No, Was button pressed?
	if (image_index) {
		// Yes, Disable button clicks.
		global.button_disable = true;
		show_debug_message("Quit button disabled buttons.");
	
		// Stop music.
		audio_stop_sound(global.music);
	
		// Play game exit sound. Wait for sound to end.
		audio_play_sound(button_sound,0,false);
	}
}

