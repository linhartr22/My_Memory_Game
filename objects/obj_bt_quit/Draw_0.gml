/// @description Show Quit Button.
// Draw empty button sprite.
draw_self();

// Format text.
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
//draw_text(x, y - (sprite_height * 0.05), string(button_text));
draw_text(x, y - (sprite_height * 0.05), button_text);

