/// @description Level Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Stop music.
	audio_stop_sound(global.music);
	
	// Play level.
	global.game_level = level;
	room_goto(rm_level);
	
	// Set button released.
	image_index = false;
}

