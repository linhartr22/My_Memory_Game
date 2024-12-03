/// @description Show Music Button.
// Draw button base.
draw_self();

// Draw button sprite.
draw_sprite(button_sprite, global.play_music, x, y - (sprite_height * 0.05));	// Ignore feather.

