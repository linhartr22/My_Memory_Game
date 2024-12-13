/// @description Room Start Event.
// Play game music.
var _music = snd_music_options
if (global.play_music) {
	audio_stop_sound(global.music);
	audio_play_sound(_music, 0, true);
	audio_sound_gain(_music, 1, 500);
}
global.music = _music;
