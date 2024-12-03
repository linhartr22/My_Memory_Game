/// @description Room Start Event.
show_debug_message("Stage: Room Start");

// Play game music.
global.music = snd_music_level_1
if (global.play_music) {
	audio_play_sound(global.music, 0, true);
}

// Set difficulty.


#region Set Matching Tiles
// Set matching tiles.
var _matches[];
for (var _row = 0; _row < global.puzzle_rows; _row++) {
	for (var _col = 0; _col < global.puzzle_cols; _col++) {
		_matches[_row, _col] = floor(((_row * global.puzzle_cols) + _col) / 2);
	}
}
#endregion

#region Shuffle Tiles
// Shuffle tiles.
repeat (puzzle_shuffles) {
	// Tiles to swap.
	var _swap_1_row = irandom_range(0, global.puzzle_rows - 1);
	var _swap_1_col = irandom_range(0, global.puzzle_cols - 1);
	// Don't swap the same tiles.
	var _swap_2_row = _swap_1_row;
	var _swap_2_col = _swap_1_col;
	while ((_swap_1_row == _swap_2_row) && (_swap_1_col == _swap_2_col)) {
		_swap_2_row = irandom_range(0, global.puzzle_rows - 1);
		_swap_2_col = irandom_range(0, global.puzzle_cols - 1);
	}
	// Swap tiles.
	var _tmp = _matches[_swap_1_row, _swap_1_col];
	_matches[_swap_1_row, _swap_1_col] = _matches[_swap_2_row, _swap_2_col];
	_matches[_swap_2_row, _swap_2_col] = _tmp;
}
#endregion

#region Create Puzzle Tiles
// Create puzzle tiles.
for (var _row = 0; _row < global.puzzle_rows; _row++) {
	for (var _col = 0; _col < global.puzzle_cols; _col++) {
		var _x = puzzle_org_x + (_col * tile_width);
		var _y = puzzle_org_y + (_row * tile_height);
		instance_create_layer(_x, _y, "Tile", obj_btn_tile, {
			match : _matches[_row, _col],
			tile_row: _row,
			tile_col: _col,
			tile_x : _x,
			tile_y : _y,
			tile_width : tile_width,
			tile_height : tile_height
		});
	}
}
#endregion

// Clear tile selected state.
global.is_tile_selected = false;

// Clear buttons disabled state.
global.button_disable = false;

