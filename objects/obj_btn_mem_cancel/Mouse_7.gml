/// @description Saved Games Cancel Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, disable load & save buttons. Enable memory slot buttons.
	global.button_save_game_pressed = "";
	global.button_mem_slot_pressed = 0;
	
	// Set button released.
	image_index = false;
}

