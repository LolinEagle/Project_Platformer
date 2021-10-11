///@desc Game Logic

//Fullscreen
if(keyboard_check_pressed(vk_f1)){
	window_set_fullscreen(!window_get_fullscreen());
}

//Volume
audio_group_set_gain(OST, global.gameOST, 0);
audio_group_set_gain(SFX, global.gameSFX, 0);

//Debug
if(global.debug){
	//Room
	if(keyboard_check_pressed(vk_numpad0)){game_restart();}
	if(keyboard_check_pressed(vk_numpad1)){
		if(room != room_last){scSlideTransition(TRANS_MODE.NEXT);}
	}
	if(keyboard_check_pressed(vk_numpad2)){
		if(room != room_first){room_goto_previous();}
	}
	if(keyboard_check_pressed(vk_numpad3)){
		scSlideTransition(TRANS_MODE.RESTART);
	}

	//God mode & Delete save
	if(keyboard_check_pressed(vk_numpad4)){global.healPlayer = infinity;}
	if(keyboard_check_pressed(vk_numpad5)){global.healPlayer = 0;}
	if(keyboard_check_pressed(vk_numpad6)){
		file_delete(SAVEFILE);
		file_delete(OPTION);
	}
}