/// @description To Menu Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Return to menu.
	room_goto(rm_menu);
	
	// Set button released.
	image_index = false;
}

