/// @description Show Level Button.
// Draw empty button sprite.
draw_self();

// Format text.
draw_set_font(fnt_big_text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
draw_text(x, y - (sprite_height * 0.05), button_text);

// Draw lock icon.
var _lock_x = x + (sprite_width / 2) - (sprite_get_width(spr_lock) * 1.4);
var _lock_y = y - (sprite_height * 0.05);
show_debug_message("level: {0}", level);
draw_sprite(spr_lock, global.locked_level[level - 1], _lock_x, _lock_y);

