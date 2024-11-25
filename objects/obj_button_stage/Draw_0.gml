/// @description Show Stage Button.
// Select button base.
image_index = global.locked_stages[global.game_level - 1, stage - 1];

// Draw button base.
draw_self();

// Stage unlocked?
if (!image_index) {
	// Show blurred image.
	var _image = global.images[global.game_level - 1, stage - 1]
	/*
	shader_set(sh_blur_brute);
	shader_set_uniform_f(shader_get_uniform(sh_blur_brute,"v_texture_size"), sprite_get_width(_image), sprite_get_height(_image));
	*/
	shader_set(sh_blur);
	shader_set_uniform_f(shader_get_uniform(sh_blur,"size"), sprite_get_width(_image), sprite_get_height(_image), 5);
	draw_sprite(_image, 0, x, y);
	shader_reset();
} else {
	// Format button text.
	draw_set_font(fnt_button_text);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_set_alpha(1);

	// Draw button text.
	draw_text(x, y - (sprite_height * 0.05), string("STAGE {0}", stage));
}
