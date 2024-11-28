/// @description Menu Draw Event.
// Draw logo.
draw_sprite(spr_logo, 0, room_width / 2, room_height * 0.2);

// Format level text.
draw_set_font(fnt_medium_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
var _x = (room_width / 2) - 150;
var _y = room_height * 0.87;
draw_text(_x, _y, "Select any unlocked level.");

