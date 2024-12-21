/// @description Music Button Left Mouse Released.
// Was button pressed?
if (image_index) {
	// Yes, Toggle screen size.
	global.display_full = !global.display_full;
	window_set_fullscreen(global.display_full);

	// Button released.
	image_index = false;
}

