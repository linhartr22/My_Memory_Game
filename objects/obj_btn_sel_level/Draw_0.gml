/// @description Show Level Button.
// Draw button base.
draw_self();

// Format button text.
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_alpha(1);

// Draw button text.
draw_text(x, y - (sprite_height * 0.05), button_text);

// Draw lock icon.
var _lock_x = x + (sprite_width / 2) - (sprite_get_width(spr_icon_lock) * 1.4);
var _lock_y = y - (sprite_height * 0.05);
draw_sprite(spr_icon_lock, global.locked_levels[level - 1], _lock_x, _lock_y);

