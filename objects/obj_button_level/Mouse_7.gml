/// @description Level Button Left Mouse Released.
// Was level button released?
if (image_index) {
	// Yes, Stop music.
	audio_stop_sound(snd_music_menu);
	
	// Play level.
	global.game_level = level;
	room_goto(rm_level);
	show_debug_message("Level button moved to level {0}", global.game_level);
}

