/// @description Saved Games Button Setup.
// Disable sprite animation.
image_speed = false;

// Button sprite.
button_sprite = false;

// Arrow right sprite blink rate.
arrow_index = 0;
arrow_steps = sprite_get_number(spr_arrow_right);
arrow_blink = 6;
alarm_set(0, arrow_blink);
