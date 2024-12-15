/// @description Quit Button Left Click Released.
// Button disabled?
if (!global.buttons_locked) {
	// No, Was button pressed?
	if (image_index) {
		// Yes, Disable button clicks.
		global.buttons_locked = true;
	
		// Stop music.
		audio_stop_sound(global.music);
	
		// Play game exit sound. Wait for sound to end.
		audio_play_sound(button_sound,0,false);
	}
}

