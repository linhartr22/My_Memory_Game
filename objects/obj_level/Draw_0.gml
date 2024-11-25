/// @description Display Level.
// Format level text.
draw_set_font(fnt_big_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("Level: {0}", global.game_level));

