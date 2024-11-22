// Draw button sprite.
draw_self();

// Change font.
draw_set_font(fnt_big_text);

// Change text alignment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Change drawing color.
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
draw_text(x + 0, y + -5, string("PLAY") + "");