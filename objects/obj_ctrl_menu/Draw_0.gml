/// @description Menu Draw Event.
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

// Draw instructions text.
draw_set_font(fnt_medium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);
var _inst_x = (room_width / 2) - 150;
var _inst_y = room_height * 0.87;
draw_text(_inst_x, _inst_y, "Select an unlocked level.");

