/// @description Show Menu Quit Button State.
// Draw red wide button sprite.
draw_self();

// Format text.
draw_set_font(fnt_big_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
draw_text(x, y - 5, string("EXIT"));

