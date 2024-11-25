/// @description Menu Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Stop music.
	audio_stop_sound(global.music);
	
	// Yes, Return to menu.
	room_goto(rm_menu);
	show_debug_message("Menu button moved to the menu.");
	
	// Set button released.
	image_index = false;
}

