/// @description Tile Button Left Mouse Pressed.
// Are buttons locked?
if (global.button_disable) {
	// Yes, Exit.
	exit;
}

// Has this tile been selected?
if (image_index > 0) {
	// Yes, Play error sound
	audio_play_sound(snd_btn_error, 0, false);
	exit
} else {
}

// Set tile sprite to match.
image_index = match + 2

// Play clicked sound.
audio_play_sound(snd_ui_click, 0, false);
	
// Has any tile been selected?
if (!global.is_tile_selected) {
	// No, Set tile is selected state.
	global.is_tile_selected = true;
	
	// Set tile to match.
	global.tile_to_match = match;
	global.tile_to_match_id = id;
} else {
	// Yes, Disable Buttons.
	global.button_disable = true;
	
	// Delay to view result
	alarm_set(0, 30);
}

