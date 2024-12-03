/// @description Stage Button Left Mouse Released.
// Was button pressed?
if (button_pressed) {
	// Yes, Stop music.
	audio_stop_sound(global.music);
	
	// Play level.
	global.game_stage = stage;
	room_goto(rm_stage);
	show_debug_message("Stage select button moved to level {0}, stage {1}", global.game_level, global.game_stage);
	
	// Set button released.
	button_pressed = false;
}

