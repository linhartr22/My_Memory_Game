/// @description Quit Sound Finished.
// Quit button sound finished?
if (ds_map_find_value(async_load, "asset_id") == button_sound) {
	// Yes, Exit game.
	game_end();
	show_debug_message("Quit button exited the game.");
}

