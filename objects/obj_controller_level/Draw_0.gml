/// @description Display Level.
// Format level text.
draw_set_font(fnt_medium_text);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw level text.
draw_text(x, y, string("LEVEL: {0}\n ", global.game_level));

draw_text(x, y + 500, "Select any \nunlocked \nstage.");