/// @description Saved Games Ok Button Left Mouse Pressed.
// Button pressed?
if ((global.button_save_game_pressed != "") && (global.button_mem_slot_pressed != 0)) {
	// Yes, Set button to pressed.
	image_index = true;

	// Play clicked sound.
	audio_play_sound(snd_ui_click, 0, false);
} else {
	// Play error sound.
	audio_play_sound(snd_btn_error, 0, false);
}

