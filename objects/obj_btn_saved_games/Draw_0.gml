/// @description Display Saved Games Button.
// Button enabled?
if (global.button_save_game_pressed == "") {
	// Yes, Show save game button.
	image_alpha = 1.0;
} else {
	// No, Hide save game button.
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
draw_text(x, y - (sprite_height * 0.05), button_label);

// Draw arrow right sprite?
if (global.button_save_game_pressed == button_label) {
	var _arrow_x = x - (sprite_width * 0.6);
	draw_sprite(spr_arrow_right, arrow_index, _arrow_x, y);
}