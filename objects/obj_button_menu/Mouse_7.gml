/// @description Menu Quit Button Left Mouse Released.
// Was menu quit button pressed?
if (image_index) {
	// Yes, Stop music.
	audio_stop_sound(snd_music_level);
	
	// Yes, Return to menu.
	room_goto(rm_menu);
	show_debug_message("Menu button moved to the menu.");
}

