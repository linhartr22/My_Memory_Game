/// @description Display Music Volume Scale.
// Scale selected?
if (global.vol_music == scale) {
	// Yes, Show selected sprite.
	image_index = 1;
} else {
	// No, Show not selected sprite.
	image_index = 0;
}

// Draw scale sprite.
draw_self();
