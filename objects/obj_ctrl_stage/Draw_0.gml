/// @description Display Stage.
// Draw score text.
draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);
var _score_x = room_width * 0.73;
var _score_y = room_height * 0.125;
var _score = global.stage_high_score[global.game_level - 1, global.game_stage - 1];
_score = string_replace_all(string_format(_score, 6, 0), " ", "0");
draw_text(_score_x, _score_y, string("HI-SCORE\n{0}", _score));

// Draw timer text.
var _timer_x = room_width * 0.73;
var _timer_y = room_height * 0.27;
var _timer_t = floor(global.timer_count * 10) / 10;
_timer_t = string_replace_all(string_format(_timer_t, 2, 1), " ", "0");
draw_text(_timer_x, _timer_y, string("TIMER {0}", _timer_t));

// Draw level text.
draw_set_font(fnt_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(x, y, string("LEVEL: {0}\nSTAGE: {1}", global.game_level, global.game_stage));

// Any tiles uncovered?
if (tiles_remaining == global.puzzle_rows * global.puzzle_cols) {
	// No, Draw instructions text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	var _inst_msg = "- Select a tile then try to find its match.\n- The timer starts when first tile is selected.";
	var _inst_x = room_width * 0.04;
	var _inst_y = room_height * 0.4;
	draw_text_ext(_inst_x, _inst_y, _inst_msg, string_height("Stage"), 440);
}

// Any tile covered?
if (tiles_remaining == 0) {
	// No, Draw hint text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	// Draw resume text.
	var _resume_x = room_width - (room_width * 0.04) - 400;
	var _resume_y = room_height * 0.4;
	var _resume_msg = "Press back when done viewing.";
	// Next level locked?
	if (!global.locked_levels[global.game_level]) {
		// No, Append next level unlocked text.
		_resume_msg = string("{0}\n\nYou unlocked Level {1}!", _resume_msg, global.game_level + 1);
	}
	draw_text_ext(_resume_x, _resume_y, _resume_msg, string_height("Stage"), 400);
}

// Draw puzzle frame.
draw_set_color(c_white);
var _frame_x1 = puzzle_org_x - puzzle_size_border;
var _frame_y1 = puzzle_org_y - puzzle_size_border;
var _frame_x2 = puzzle_org_x + puzzle_width + puzzle_size_border;
var _frame_y2 = puzzle_org_y + puzzle_height + puzzle_size_border;
draw_line_width(_frame_x1, _frame_y1, _frame_x2, _frame_y1, puzzle_size_border);
draw_line_width(_frame_x2, _frame_y1, _frame_x2, _frame_y2, puzzle_size_border);
draw_line_width(_frame_x2, _frame_y2, _frame_x1, _frame_y2, puzzle_size_border);
draw_line_width(_frame_x1, _frame_y2, _frame_x1, _frame_y1, puzzle_size_border);

// Draw image.
var _sprite = global.images[global.game_level - 1, global.game_stage - 1];
draw_sprite_stretched(_sprite, image_index, puzzle_org_x, puzzle_org_y, puzzle_width, puzzle_height);

