/// @description To Level Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Stop music.
	audio_stop_sound(global.music);
	
	// Yes, Return to menu.
	room_goto(rm_level);
	show_debug_message("To level button moved to the level select menu.");
	
	// Set button released.
	image_index = false;
}

