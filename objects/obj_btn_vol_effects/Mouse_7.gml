/// @description Effects Volume Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Increase volume?
	if (button_text == ">") {
		// Yes.
		global.vol_effects++;
	} else {
		// No.
		global.vol_effects--;
	}
	global.vol_effects_gain = global.gain[global.vol_effects - 1];

	
	// Set button released.
	image_index = false;
}

