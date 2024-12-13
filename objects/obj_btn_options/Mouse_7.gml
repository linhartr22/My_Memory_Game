/// @description Options Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Go to options room.
	room_goto(rm_options);
	
	// Set button released.
	image_index = false;
}

