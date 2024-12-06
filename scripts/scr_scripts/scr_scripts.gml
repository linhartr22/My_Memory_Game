/// @description Scripts
// Returns total score.
function scr_get_score(){
	// Clear total score.
	var _s = 0;
	for (var _level = 0; _level < global.levels_cnt; _level++){
		for (var _stage = 0; _stage < global.stages_cnt; _stage++){
			// Add level and stage high score to total score.
			_s += global.stage_high_score[_level, _stage];
		}
	}
	// Returen total score.
	return (_s);
}

