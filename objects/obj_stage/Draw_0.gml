/// @description Display Level.
// Format level text.
draw_set_font(fnt_big_text);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("LEVEL: {0}\nSTAGE: {1}", global.game_level, global.game_stage));

