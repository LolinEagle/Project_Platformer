if(!global.gamePaused){
	letters += spd;
	textCurrent = string_copy(text, 1, floor(letters));

	draw_set_font(fCalibriLight24);
	if(h == 0){h = string_height(text);}
	w = string_width(textCurrent);

	if(letters >= length && keyboard_check_pressed(vk_anykey)){
		instance_destroy();
		with(oCamera){follow = oPlayer;}
	}
}