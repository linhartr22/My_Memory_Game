/// @description Menu Game Start Event.
show_debug_message("Menu Game Start Event.")

// Set audio volume. 
global.audio_volume = 0.5;
audio_set_master_gain(0, global.audio_volume);

// Enable music.
global.play_music = true;

// Clear score.
global.score = 0;

// Game progress.
global.game_level = 0;
global.game_stage = 0;

// Game size.
global.levels_cnt = 6;
global.stages_cnt = 4;

// Locked levels.
global.locked_levels = [false, true, true, true, true, true];

// Locked stages.
global.locked_stages = [
	[false, true, true, true],	// level 1
	[true, true, true, true],	// level 2
	[true, true, true, true],	// level 3
	[true, true, true, true],	// level 4
	[true, true, true, true],	// level 5
	[true, true, true, true]	// level 6	
];

// Stage images.
global.images = [
	[spr_level_1_stage_1, spr_level_1_stage_2, spr_level_1_stage_3, spr_level_1_stage_4],
	[spr_level_2_stage_1, spr_level_2_stage_2, spr_level_2_stage_3, spr_level_2_stage_4],
	[spr_level_3_stage_1, spr_level_3_stage_2, spr_level_3_stage_3, spr_level_3_stage_4],
	[spr_level_4_stage_1, spr_level_4_stage_2, spr_level_4_stage_3, spr_level_4_stage_4],
	[spr_level_5_stage_1, spr_level_5_stage_2, spr_level_5_stage_3, spr_level_5_stage_4],
	[spr_level_6_stage_1, spr_level_6_stage_2, spr_level_6_stage_3, spr_level_6_stage_4]
];

