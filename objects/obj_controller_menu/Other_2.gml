/// @description Menu Game Start Event.
show_debug_message("Menu Game Start Event.")

// Set audio volume. 
global.audio_volume = 0.5;
audio_set_master_gain(0, global.audio_volume);

// Enable music.
global.play_music = true;

// Clear score.
score = 0;

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

global.images = [
	[spr_level_1_stage_1, spr_level_1_stage_2, spr_level_1_stage_3, spr_level_1_stage_4],
	[spr_level_2_stage_1, spr_level_2_stage_2, spr_level_2_stage_3, spr_level_2_stage_4]
];

