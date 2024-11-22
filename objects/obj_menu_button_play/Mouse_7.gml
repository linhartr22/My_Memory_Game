// If the image_index is equal to 1, which means that
// the left mouse button was clicked on this button
// already...
if(image_index == 1)
{
	// Play a sound effect for when the button
	// is clicked.
	audio_play_sound(snd_ui_click, 0, 0);

	// Go to the first level
	room_goto(rm_level_1);
}