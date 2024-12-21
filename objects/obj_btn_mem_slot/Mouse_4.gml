/// @description Saved Games Memory Slot Button Left Mouse Pressed.
// Button enabled?
if ((global.button_save_game_pressed != "") && (global.button_mem_slot_pressed == 0)) {
	// Yes, Set button to pressed.
	image_index = true;

	// Play clicked sound.
	audio_play_sound(snd_ui_click, 0, false, global.vol_effects_gain);
} else {
	// Play error sound.
	audio_play_sound(snd_btn_error, 0, false, global.vol_effects_gain);
}

