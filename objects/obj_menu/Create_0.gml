/// @description Menu Setup.
// Get audio volume.
//global.audio_volume = audio_get_master_gain(0);
global.audio_volume = 0.5;
audio_set_master_gain(0, global.audio_volume);

// Play menu music.
audio_play_sound(snd_music_menu, 0, true);

// Score.
score = 0;

// Locked levels.
global.locked_level = [false, true, true, true, true, true];

// Locked stages.
global.locked_stages = [
	[false, true, true, true],	// level 1
	[true, true, true, true],	// level 2
	[true, true, true, true],	// level 3
	[true, true, true, true],	// level 4
	[true, true, true, true],	// level 5
	[true, true, true, true]	// level 6	
]

// Level buttons.
#macro LVL_BTN_OFS_X 0
#macro LVL_BTN_OFS_Y 550
#macro LVL_BTN_SPC_X 100
#macro LVL_BTN_SPC_Y 40
#macro LVL_BTN_ROWS 2
#macro LVL_BTN_COLS 3

// Create level buttons.
for (var _row = 0; _row < LVL_BTN_ROWS; _row++) {
	var _y = LVL_BTN_OFS_Y + (_row * (sprite_get_height(spr_button_wide_green) + LVL_BTN_SPC_Y));
	for (var _col = 0; _col < LVL_BTN_COLS; _col++) {
		var _x = (room_width / 2) + ((_col - 1) * (sprite_get_width(spr_button_wide_green) + LVL_BTN_SPC_X));
		instance_create_layer(_x, _y, "Instances", obj_button_level, {
			level : (_row * LVL_BTN_COLS) + _col + 1
		});
	}
}