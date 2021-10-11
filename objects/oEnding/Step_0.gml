//Move player towards center
layer_x("AssetsTitle", min(layer_get_x("AssetsTitle") + 1, RES_W * 0.5 - 32));

//Progress Text
letters += spd;
text = string_copy(endtext[currentline], 1, floor(letters));

//Next line
if(letters >= lenght) && (keyboard_check_pressed(vk_anykey) || ++i >= 180){
	if(currentline + 1 == array_length(endtext)){
		scSlideTransition(TRANS_MODE.RESTART);
	}else{
		currentline++;
		letters = 0;
		lenght = string_length(endtext[currentline]);
	}

	//Iterator
	i = 0;
	if(endtext == 4){i = -420;}
}