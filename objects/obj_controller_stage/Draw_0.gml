/// @description Display Level.
// Format level text.
draw_set_font(fnt_medium_text);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("LEVEL: {0}\nSTAGE: {1}", global.game_level, global.game_stage));

// Draw press first button hint.
if (tiles_remaining == global.puzzle_rows * global.puzzle_cols) {
	draw_text(x, y + 500, "Select a tile \nthen try to \nfind its \nmatch");
}

// Draw finished viewing hint.
if (tiles_remaining == 0) {
	draw_text(x, y + 500, "Press back \nwhen done \nviewing");
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

