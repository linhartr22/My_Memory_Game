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
if (tiles_remaining == 0 && !global.buttons_locked) {
	// No, Update Score.
	global.timer_start = false;
	var _hs = global.stage_high_score[global.game_level - 1, global.game_stage - 1]
	global.stage_high_score[global.game_level - 1, global.game_stage - 1] = 
		max(_hs, floor(global.timer_count * 10));
	
	// Play winner sound.
	audio_play_sound(snd_match_big, 0, false);
	
	// Enable buttons.
	global.buttons_locked = true;
	
	// Last stage of level?
	if (global.game_stage == global.stages_cnt) {
		// Yes, Last level?
		if (global.game_level != global.levels_cnt) {
			// No, Unlock next level and its first stage.
			global.locked_levels[global.game_level] = false;
			global.locked_stages[global.game_level, 0] = false;
		}
	} else {
		// No, Unlock next stage.
		global.locked_stages[global.game_level - 1, global.game_stage] = false;
	}
} else {
	// Timer running?
	if (global.timer_start) {
		// Yes, Decrement timer.
		global.timer_count = max(global.timer_count - (1 / 30), 0);
	}
}

