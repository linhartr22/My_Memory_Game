/// @description Display Level.
// Format level text.
draw_set_font(fnt_big_text);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("LEVEL: {0}\nSTAGE: {1}", global.game_level, global.game_stage));

// Draw puzzle frame.
draw_set_color(c_white);
var _x1 = PUZZLE_ORG_X - (PUZZLE_SIZE_X /2) - PUZZLE_SIZE_BORDER;
var _y1 = PUZZLE_ORG_Y - (PUZZLE_SIZE_Y /2) - PUZZLE_SIZE_BORDER;
var _x2 = PUZZLE_ORG_X + (PUZZLE_SIZE_X /2) + PUZZLE_SIZE_BORDER;
var _y2 = PUZZLE_ORG_Y + (PUZZLE_SIZE_Y /2) + PUZZLE_SIZE_BORDER;
draw_line_width(_x1, _y1, _x2, _y1, PUZZLE_SIZE_BORDER);
draw_line_width(_x2, _y1, _x2, _y2, PUZZLE_SIZE_BORDER);
draw_line_width(_x2, _y2, _x1, _y2, PUZZLE_SIZE_BORDER);
draw_line_width(_x1, _y2, _x1, _y1, PUZZLE_SIZE_BORDER);


