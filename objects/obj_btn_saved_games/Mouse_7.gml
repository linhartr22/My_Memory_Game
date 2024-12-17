/// @description Saved Games Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, disable saved game buttons. Enable memory slot buttons.
	global.button_save_game_pressed = button_text;
	
	// Set button released.
	image_index = false;
}

