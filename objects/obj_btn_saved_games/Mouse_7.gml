/// @description Load Game Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, disable load & save buttons. Enable memory slot buttons.
	global.button_disable = true;
	
	// Set button released.
	image_index = false;
}

