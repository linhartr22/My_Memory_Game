/// @description Stage Step Event
// All tiles uncovered?
var _tiles_remaining = 0;
with (obj_tile) {
	if (image_index = 0) {
		_tiles_remaining++;
	}
}
tiles_remaining = _tiles_remaining;
if (tiles_remaining == 0 && !global.button_disable) {
	show_debug_message("Winner!");
	audio_play_sound(snd_match_big, 0, false);
	global.button_disable = true;
	if (global.game_stage == 4) {
		global.locked_levels[global.game_level] = false;
		global.locked_stages[global.game_level, 0] = false;
	} else {
		global.locked_stages[global.game_level - 1, global.game_stage] = false;
	}
}

