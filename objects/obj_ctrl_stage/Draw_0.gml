/// @description Display Level.
// Format level text.
draw_set_font(fnt_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("LEVEL: {0}\nSTAGE: {1}", global.game_level, global.game_stage));

// Any tiles uncovered?
if (tiles_remaining == global.puzzle_rows * global.puzzle_cols) {
	// No, Format hint text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	// Draw hint text.
	var _msg = "Select a tile then try to find its match.";
	var _x = room_width * 0.04;
	var _y = room_height * 0.4;
	draw_text_ext(_x, _y, _msg, string_height("Stage"), 440);
}

// Any tile covered?
if (tiles_remaining == 0) {
	// No, Format hint text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	// Draw hint text.
	var _msg = "Press back when done viewing.";
	var _x = room_width - (room_width * 0.04) - 400;
	var _y = room_height * 0.4;
	// Next level unlocked?
	if (!global.locked_levels[global.game_level]) {
		// Draw hint text.
		var _msg = string("{0}\n\nYou unlocked Level {1}!", _msg, global.game_level + 1);
	}
	draw_text_ext(_x, _y, _msg, string_height("Stage"), 400);

}

// Draw puzzle frame.
draw_set_color(c_white);
var _x1 = puzzle_org_x - puzzle_size_border;
var _y1 = puzzle_org_y - puzzle_size_border;
var _x2 = puzzle_org_x + puzzle_width + puzzle_size_border;
var _y2 = puzzle_org_y + puzzle_height + puzzle_size_border;
draw_line_width(_x1, _y1, _x2, _y1, puzzle_size_border);
draw_line_width(_x2, _y1, _x2, _y2, puzzle_size_border);
draw_line_width(_x2, _y2, _x1, _y2, puzzle_size_border);
draw_line_width(_x1, _y2, _x1, _y1, puzzle_size_border);

// Draw image.
var _sprite = global.images[global.game_level - 1, global.game_stage - 1];
draw_sprite_stretched(_sprite, image_index, puzzle_org_x, puzzle_org_y, puzzle_width, puzzle_height);

