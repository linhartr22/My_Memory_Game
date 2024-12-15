/// @description Saved Games Ok Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Was it LOAD?
	if (global.button_save_game_pressed == "LOAD") {
		// Yes, Load game.
		
	} else {
		// No, Save game.
		
	}
	
	// Disable saved game buttons. Enable memory slot buttons.
	global.button_save_game_pressed = "";
	global.button_mem_slot_pressed = 0;
	
	// Set button released.
	image_index = false;
}

