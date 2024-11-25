/// @description Room Start Event.
show_debug_message("Level Obj Room Start");
// Play game music.
global.music = snd_music_level
if (global.play_music) {
	audio_play_sound(global.music, 0, true);
}

// Set stage select.
stage_select = true;

// Stage buttons.
#macro STG_BTN_OFS_X 0
#macro STG_BTN_OFS_Y 525
#macro STG_BTN_SPC_X 100
#macro STG_BTN_SPC_Y 75
#macro STG_BTN_ROWS 2
#macro STG_BTN_COLS 2

// Create stage buttons.
for (var _row = 0; _row < STG_BTN_ROWS; _row++) {
	var _y = STG_BTN_OFS_Y + (_row * (sprite_get_height(spr_button_stage) + STG_BTN_SPC_Y));
	for (var _col = 0; _col < STG_BTN_COLS; _col++) {
		var _x = (room_width / 2) - (STG_BTN_SPC_X / 2) - (sprite_get_width(spr_button_stage) / 2) + (_col * (sprite_get_width(spr_button_stage) + STG_BTN_SPC_X));
		instance_create_layer(_x, _y, "Instances", obj_button_stage, {
			stage : (_row *STG_BTN_COLS) + _col + 1
		});
	}
}

