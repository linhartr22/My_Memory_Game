/// @description Level Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Stop music.
	audio_stop_sound(global.music);
	
	// Play level.
	global.game_level = level;
	room_goto(rm_level);
	show_debug_message("Level select button moved to level {0}", global.game_level);
	
	// Set button released.
	image_index = false;
}

