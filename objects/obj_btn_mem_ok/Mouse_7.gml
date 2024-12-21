/// @description Saved Games Ok Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Was it LOAD?
	if (global.button_save_game_pressed == "LOAD") {
		// Yes, Load saved game.
		global.locked_levels = scr_array_read(global.locked_levels, "locked_levels", global.button_mem_slot_pressed);
		global.locked_stages = scr_array_read(global.locked_stages, "locked_stages", global.button_mem_slot_pressed);
		global.stage_high_score = scr_array_read(global.stage_high_score, "stage_high_score", global.button_mem_slot_pressed);
		slot_last_saved = 0;
		slot_last_loaded = global.button_mem_slot_pressed;
	} else {
		// No, Save game.
		scr_array_write(global.locked_levels, "locked_levels", global.button_mem_slot_pressed);
		scr_array_write(global.locked_stages, "locked_stages", global.button_mem_slot_pressed);
		scr_array_write(global.stage_high_score, "stage_high_score", global.button_mem_slot_pressed);		
		slot_last_loaded = 0;
		slot_last_saved = global.button_mem_slot_pressed;
	}
	
	// Disable saved game buttons. Enable memory slot buttons.
	global.button_save_game_pressed = "";
	global.button_mem_slot_pressed = 0;
	
	// Set button released.
	image_index = false;
}

