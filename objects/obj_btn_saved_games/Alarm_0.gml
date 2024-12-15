/// @description Blink Arrow Right Sprite.
// Increment arrow index.
if (arrow_index >= arrow_steps) {
	arrow_index = 1;
} else {
	arrow_index++;
}

// Reset alarm.
alarm_set(0, arrow_blink);
