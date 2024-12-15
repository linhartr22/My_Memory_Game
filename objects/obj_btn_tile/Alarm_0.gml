/// @description Show Second Tile Timer
// Tiles match?
if (global.tile_to_match == match) {
	// Yes, Set both tiles to clear.
	image_index = true;
	global.tile_to_match_id.image_index = true;
	audio_play_sound(snd_match_small, 0, false);
} else {
	// No, Set both tiles to not pressed.
	image_index = false;
	global.tile_to_match_id.image_index = false;
	audio_play_sound(snd_btn_error, 0, false);
}
	
// Set tile is not selected state.
global.is_tile_selected = false;
global.buttons_locked = false;

