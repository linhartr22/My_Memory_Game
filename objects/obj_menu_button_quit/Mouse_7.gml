/// @description Menu Quit Button Left Mouse Released.
// Was menu quit button pressed?
if (image_index) {
	// Yes, Stop all sounds.
	audio_stop_all();
	
	// Play clicked sound. Wait for sound to finish.
	audio_play_sound(snd_ui_close,0,false);	
}

