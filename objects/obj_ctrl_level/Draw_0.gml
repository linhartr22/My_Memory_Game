/// @description Display Level.
// Format level text.
draw_set_font(fnt_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("LEVEL: {0}\n ", global.game_level));

// Format hint text.
draw_set_font(fnt_button)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw hint text.
var _msg = "Finish an unlocked stage to unlock the next stage.\n\nStage 1 is easy, Stage 4 is hard."
var _x = room_width * 0.04;
var _y = room_height * 0.4;
draw_text_ext(_x, _y, _msg, string_height("Stage"), 440);

// Stage 4 unlocked and next level locked?
if (!global.locked_stages[global.game_level - 1, global.stages_cnt - 1] && 
	global.game_level != global.levels_cnt &&
	global.locked_levels[global.game_level]) {
	// Yes, Format hint text.
	draw_set_font(fnt_button)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	// Draw hint text.
	var _msg = "Finish Stage 4 to unlock the next level.";
	var _x = room_width - (room_width * 0.04) - 400;
	var _y = room_height * 0.4;
	draw_text_ext(_x, _y, _msg, string_height("Stage"), 400);
	
}

