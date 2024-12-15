/// @description Display Saved Games Memory Slot Button.
// Button enabled?
if ((global.button_save_game_pressed != "") && 
	((global.button_mem_slot_pressed == 0) || (global.button_mem_slot_pressed == mem_slot))) {
	// Yes, Show memory slot button.
	image_alpha = 1.0;
} else {
	// No, Hide memory slot button.
	image_alpha = 0.2;
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
draw_text(x, y - (sprite_height * 0.05), string_format(mem_slot, 1, 0));

