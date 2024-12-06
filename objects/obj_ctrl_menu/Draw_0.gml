/// @description Menu Draw Event.
// Format score text.
draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw score text.
var _x = room_width * 0.73;
var _y = room_height * 0.125;
var _s = string_replace_all(string_format(scr_get_score(), 6, 0), " ", "0");
draw_text(_x, _y, string("SCORE\n{0}", _s));

// Format hint text.
draw_set_font(fnt_medium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw hint text.
var _x = (room_width / 2) - 150;
var _y = room_height * 0.87;
draw_text(_x, _y, "Select an unlocked level.");

