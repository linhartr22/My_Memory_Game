/// @description Menu Room Start Event.
// Play menu music.
var _music = snd_music_menu;
if (global.play_music) {
	audio_stop_sound(global.music);
	audio_play_sound(_music, 0, true);
	audio_sound_gain(_music, true, 500);
}
global.music = _music;

// Level buttons.
#macro LVL_BTN_OFS_X 0
#macro LVL_BTN_OFS_Y (room_height * 0.5)
#macro LVL_BTN_SPC_X 100
#macro LVL_BTN_SPC_Y 40
#macro LVL_BTN_ROWS 2
#macro LVL_BTN_COLS 3

// Create level buttons.
for (var _row = 0; _row < LVL_BTN_ROWS; _row++) {
	var _y = LVL_BTN_OFS_Y + (_row * (sprite_get_height(spr_btn_l_grn) + LVL_BTN_SPC_Y));
	for (var _col = 0; _col < LVL_BTN_COLS; _col++) {
		var _x = (room_width / 2) + ((_col - 1) * (sprite_get_width(spr_btn_l_grn) + LVL_BTN_SPC_X));
		instance_create_layer(_x, _y, "Instances", obj_btn_sel_level, {
			level : (_row * LVL_BTN_COLS) + _col + 1
		});
	}
}

