/// @description Game Setup.
// Get audio volume. Used to restore volume after mute.
//global.audio_volume = audio_get_master_gain(0);
global.audio_volume = 0.5;
audio_set_master_gain(0, global.audio_volume);
audio_play_sound(snd_music_lobby,0,false);

// move to lv 1
// List of images.
image_list = [
	spr_lv_1_01,
	spr_lv_1_02,
	spr_lv_1_03,
	spr_lv_1_04
];

// move to lv 1
// Game level.
game_level = -1;
game_stage = -1;

// Score.
score = 0;