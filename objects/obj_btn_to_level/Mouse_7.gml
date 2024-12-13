/// @description To Level Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Return to menu.
	room_goto(rm_level);
	
	// Set button released.
	image_index = false;
}

