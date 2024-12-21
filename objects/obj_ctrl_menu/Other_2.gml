/// @description Menu Game Start Event.
// Volume gains.
global.gain = [0.075, 0.2, 0.5, 1];
global.gain_steps = array_length(global.gain);

// Effects volume maximum.
//global.vol_effects = global.gain_steps;
global.vol_effects = scr_ini_read("sound", "vol_effects", global.gain_steps);
global.vol_effects_gain = global.gain[global.vol_effects - 1];

// Music volume maximum.
//global.vol_music = global.gain_steps;
global.vol_music = scr_ini_read("sound", "vol_music", global.gain_steps);
global.vol_music_gain = global.gain[global.vol_music - 1];
global.play_music = true;
//global.play_music = false;   // DEBUG ONLY
global.music = snd_music_menu;

// Locked levels.
global.locked_levels = [false, true, true, true, true, true];

// Locked stages.
global.locked_stages = [
	[false, true, true, true], 	// level 1.
	[true, true, true, true], 	// level 2.
	[true, true, true, true], 	// level 3.
	[true, true, true, true], 	// level 4.
	[true, true, true, true], 	// level 5.
	[true, true, true, true]	// level 6.
];

// Stage images.
global.images = [
	[spr_level_1_stage_1, spr_level_1_stage_2, spr_level_1_stage_3, spr_level_1_stage_4],	// level 1, stage 1-4.
	[spr_level_2_stage_1, spr_level_2_stage_2, spr_level_2_stage_3, spr_level_2_stage_4],	// level 2, stage 1-4.
	[spr_level_3_stage_1, spr_level_3_stage_2, spr_level_3_stage_3, spr_level_3_stage_4],	// level 3, stage 1-4.
	[spr_level_4_stage_1, spr_level_4_stage_2, spr_level_4_stage_3, spr_level_4_stage_4],	// level 4, stage 1-4.
	[spr_level_5_stage_1, spr_level_5_stage_2, spr_level_5_stage_3, spr_level_5_stage_4],	// level 5, stage 1-4.
	[spr_level_6_stage_1, spr_level_6_stage_2, spr_level_6_stage_3, spr_level_6_stage_4]	// level 6, stage 1-4.
];

// Stage high scores.
global.stage_high_score = [
	[0, 0, 0, 0], 	// level 1.
	[0, 0, 0, 0], 	// level 2.
	[0, 0, 0, 0], 	// level 3.
	[0, 0, 0, 0], 	// level 4.
	[0, 0, 0, 0], 	// level 5.
	[0, 0, 0, 0]	// level 6.
];

// Game size.
global.levels_cnt = array_length(global.locked_levels);
global.stages_cnt = array_length(global.locked_stages[0]);

// Game progress.
global.score = scr_get_score();
global.game_level = 0;
global.game_stage = 0;

// Stage time limits.
global.stage_time_limit = [30, 45, 60, 90];

// Saved game files.
global.mem_slot_cnt = 3;
for (var _ms = 1; _ms <= 3; _ms++) {
	// Create saved game files if they don't already exist.
	scr_array_init(global.locked_levels, "locked_levels", _ms);
	scr_array_init(global.locked_stages, "locked_stages", _ms);
	scr_array_init(global.stage_high_score, "stage_high_score", _ms);
}
