/// @description Menu Draw Event.
// Format score text.
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw score text.
var _x = (room_width * 0.75);
var _y = room_height * 0.1;
var _s = string_replace_all(string_format(global.score, 4, 0), " ", "0");
draw_text(_x, _y, string("Score: {0}", _s));

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

