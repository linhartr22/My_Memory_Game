/// @description Saved Games Memory Slot Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, disable saved games buttons. Enable memory slot buttons.
	global.button_mem_slot_pressed = mem_slot;
	
	// Set button released.
	image_index = false;
}

