/// @description Stage Setup.
show_debug_message("Stage: Create");

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

