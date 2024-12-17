/// @description Menu Game Start Event.
// Set audio volume. 
audio_set_master_gain(0, 0.5);

// Music.
global.play_music = true;
//global.play_music = false;
global.music = snd_music_menu;

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

// Stage high scores.
global.stage_high_score = [
	[0, 0, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0]
];

// Game size.
global.levels_cnt = array_length(global.locked_levels);
global.stages_cnt = array_length(global.locked_stages[0]);

// Game progress.
global.score = scr_get_score();
global.game_level = 0;
global.game_stage = 0;

// Stage time limits.
global.stage_time_limit = [20, 35, 50, 90];

// Create any missing saved game files.
global.mem_slot_cnt = 3;
for (var _ms = 1; _ms <= 3; _ms++) {
	scr_array_init(global.locked_levels, "locked_levels", _ms);
	scr_array_init(global.locked_stages, "locked_stages", _ms);
	scr_array_init(global.stage_high_score, "stage_high_score", _ms);
}
