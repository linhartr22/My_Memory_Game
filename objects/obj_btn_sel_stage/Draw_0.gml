/// @description Show Stage Button.
// Select button base.
image_index = global.locked_stages[global.game_level - 1, stage - 1];

// Draw button base.
draw_self();

// Stage unlocked?
if (!image_index) {
	// Show blurred image.
	// Image.
	var _image = global.images[global.game_level - 1, stage - 1];
	var _scale_width = button_image_width / sprite_get_width(_image);
	var _scale_height = button_image_height / sprite_get_height(_image);
	var _scale_x = max(_scale_width, _scale_height);
	var _scale_y = max(_scale_width, _scale_height);

	// Resize image.
	var _surf = surface_create(button_image_width, button_image_height);
	surface_set_target(_surf);
	draw_clear_alpha(c_black, 0);
	draw_sprite_ext(_image, 0, button_image_width / 2, button_image_height / 2, _scale_x, _scale_y, 0, c_white, 1);
	surface_reset_target();
	_image = sprite_create_from_surface(_surf, 0, 0, button_image_width, button_image_height, false, false, button_image_width / 2, button_image_height / 2);
	surface_free(_surf);
	
	// Blur image.
	shader_set(sh_blur);
	shader_set_uniform_f(shader_get_uniform(sh_blur,"size"), sprite_get_width(_image), sprite_get_height(_image), 50);
	draw_sprite(_image, 0, x, y);
	shader_reset();

	// Draw lock icon.
	draw_sprite(spr_icon_lock, 0, x, y + (sprite_height * 0.3));
} else {
	// Draw lock icon.
	draw_sprite(spr_icon_lock, 1, x, y + (sprite_height * 0.3));
}

// Format button text.
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
draw_text(x, y - (sprite_height * 0.05), string("STAGE {0}", stage));
	

