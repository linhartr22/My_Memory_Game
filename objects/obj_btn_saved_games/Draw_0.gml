/// @description Display Saved Games Button.
// Buttons disabled?
if (global.button_disable) {
	// Yes, Hide save slot buttons.
	image_alpha = 0.2;
} else {
	// No, Show save slot buttons.
	image_alpha = 1.0;
}

// Draw button base.
draw_self();

// Format button text.
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
draw_text(x, y - (sprite_height * 0.05), mode);

