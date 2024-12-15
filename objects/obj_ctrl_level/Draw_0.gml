/// @description Display Level.
// Draw score text.
draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);
var _score_x = room_width * 0.73;
var _score_y = room_height * 0.125;
var _score = string_replace_all(string_format(scr_get_score(), 6, 0), " ", "0");
draw_text(_score_x, _score_y, string("SCORE\n{0}", _score));

// Draw level text.
draw_set_font(fnt_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(x, y, string("LEVEL: {0}\n ", global.game_level));

// Draw instructions text.
draw_set_font(fnt_button)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_alpha(1);
var _inst_msg = "Finish an unlocked stage to unlock the next stage.\n\nStage 1 is easy, Stage 4 is hard."
var _inst_x = room_width * 0.04;
var _inst_y = room_height * 0.4;
draw_text_ext(_inst_x, _inst_y, _inst_msg, string_height("Stage"), 440);

// Stage 4 unlocked and next level locked?
if (!global.locked_stages[global.game_level - 1, global.stages_cnt - 1] && 
	global.game_level != global.levels_cnt &&
	global.locked_levels[global.game_level]) {
	// Yes, Draw stage 4 text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	var _s4_msg = "Finish Stage 4 to unlock the next level.";
	var _s4_x = room_width - (room_width * 0.04) - 400;
	var _s4_y = room_height * 0.4;
	draw_text_ext(_s4_x, _s4_y, _s4_msg, string_height("Stage"), 400);	
}

// Next level unlocked?
if (global.game_level != global.levels_cnt &&
	!global.locked_levels[global.game_level]) {
	// Yes, Draw level unlocked text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	var _unlocked_msg = string("Level {0} is unlocked.", global.game_level + 1);
	var _unlocked_x = room_width - (room_width * 0.04) - 400;
	var _unlocked_y = room_height * 0.4;
	draw_text_ext(_unlocked_x, _unlocked_y, _unlocked_msg, string_height("Stage"), 400);	
}

