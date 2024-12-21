/// @description To Menu Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Write volume settings to ini file.
	scr_ini_write("sound", "vol_effects", global.vol_effects);
	scr_ini_write("sound", "vol_music", global.vol_music);
	
	// Return to menu.
	room_goto(rm_menu);
	
	// Set button released.
	image_index = false;
}

