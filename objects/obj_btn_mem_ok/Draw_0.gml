/// @description Display Saved Games Ok Button.
// Button enabled?
if ((global.button_save_game_pressed != "") && (global.button_mem_slot_pressed != 0)) {
	// Yes, Show save slot button.
	image_alpha = 1.0;
} else {
	// No, Hide save slot button.
	image_alpha = 0.2;
}

// Draw button base.
draw_self();

// Draw button text.
draw_set_font(fnt_button_sm);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(x, y - (sprite_height * 0.05), string("OK", 1, 0));

// Display last loaded slot?
var _x = room_width * 0.5;
var _y = room_height * 0.88;
if (slot_last_loaded > 0) {
	// Yes, Draw last loaded slot text.
	draw_set_font(fnt_button);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_text(_x, _y, string("LOADED SLOT {0}.", slot_last_loaded));
}

// Display last saved slot?
if (slot_last_saved > 0) {
	// Yes, Draw last saved slot text.
	draw_set_font(fnt_button);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_text(_x, _y, string("SAVED SLOT {0}.", slot_last_saved));
}

