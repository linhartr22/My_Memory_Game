/// @description Stage Setup.
show_debug_message("Stage: Create");

// Puzzle difficulty.
global.difficulty_levels = [
	{row : 2, col : 3}, 
	{row : 2, col : 4}, 
	{row : 3, col : 4}, 
	{row : 4, col : 4}
];

// Set number of puzzle rows and columns.
global.puzzle_rows = global.difficulty_levels[global.game_stage - 1].row;
global.puzzle_cols = global.difficulty_levels[global.game_stage - 1].col;
	
// Puzzle Size.
puzzle_width = 800;
puzzle_height = 600;
puzzle_size_border = 5;

// Puzzle origin (Upper Left). 
puzzle_offset_x = 0;
puzzle_offset_y = room_height * 0.15;
puzzle_org_x = (room_width / 2) + puzzle_offset_x - (puzzle_width / 2);
puzzle_org_y = (room_height / 2) + puzzle_offset_y - (puzzle_height / 2);

// Tile Size.
tile_width = puzzle_width / global.puzzle_cols;
tile_height = puzzle_height / global.puzzle_rows;

// Puzzle difficulty.
puzzle_shuffles = global.puzzle_rows * global.puzzle_cols;

// Covered tiles remaining.
tiles_remaining = global.puzzle_rows * global.puzzle_cols;

