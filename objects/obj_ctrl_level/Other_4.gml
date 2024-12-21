/// @description Room Start Event.
// Play game music.
var _music = snd_music_level
if (global.play_music) {
	audio_stop_sound(global.music);
	audio_play_sound(_music, 0, true, global.vol_music_gain);
	audio_sound_gain(_music, 1, 500);
}
global.music = _music;

// Set stage select.
stage_select = true;

// Stage buttons.
#macro STG_BTN_OFS_X 0
#macro STG_BTN_OFS_Y (room_height * 0.5)
#macro STG_BTN_SPC_X 100
#macro STG_BTN_SPC_Y 75
#macro STG_BTN_ROWS 2
#macro STG_BTN_COLS 2
#macro STG_BTN_IMG_WIDTH 320
#macro STG_BTN_IMG_HEIGHT 240

// Create stage buttons.
for (var _row = 0; _row < STG_BTN_ROWS; _row++) {
	var _y = STG_BTN_OFS_Y + (_row * (sprite_get_height(spr_btn_stage) + STG_BTN_SPC_Y));
	for (var _col = 0; _col < STG_BTN_COLS; _col++) {
		var _x = (room_width / 2) - (STG_BTN_SPC_X / 2) - (sprite_get_width(spr_btn_stage) / 2) + (_col * (sprite_get_width(spr_btn_stage) + STG_BTN_SPC_X));
		instance_create_layer(_x, _y, "Instances", obj_btn_sel_stage, {
			stage : (_row *STG_BTN_COLS) + _col + 1,
			button_image_width : STG_BTN_IMG_WIDTH,
			button_image_height : STG_BTN_IMG_HEIGHT
		});
	}
}

