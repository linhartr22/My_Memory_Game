/// @description Stage Step Event
// Count uncoverd tiles.
var _tiles_remaining = 0;
with (obj_btn_tile) {
	if (image_index = 0) {
		_tiles_remaining++;
	}
}
tiles_remaining = _tiles_remaining;

// Uncovered tiles remain?
if (tiles_remaining == 0 && !global.button_disable) {
	// No, Update Score.
	global.timer_start = false;
	global.score += floor(global.timer_count * 10);
	
	// Play winner sound.
	audio_play_sound(snd_match_big, 0, false);
	
	// Enable buttons.
	global.button_disable = true;
	
	// Last stage of level?
	if (global.game_stage == global.stages_cnt) {
		// Yes.
		global.locked_levels[global.game_level] = false;
		global.locked_stages[global.game_level, 0] = false;
	} else {
		// No, Unlock next stage.
		global.locked_stages[global.game_level - 1, global.game_stage] = false;
	}
} else {
	if (global.timer_start) {
		global.timer_count = max(global.timer_count - (1 / 30), 0);
	}
}

