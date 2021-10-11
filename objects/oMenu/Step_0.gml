///@desc Menu Logic
menuX += (menuTargetX - menuX) / menuSpeed;

if(menuControl){
	var keyUp = KEY_PRESSED(vk_up) || KEY_PRESSED(global.gameUp);
	var keyDown = KEY_PRESSED(vk_down) || KEY_PRESSED(global.gameDown);
	if(keyUp){
		if(++menuCursor >= menuItems){menuCursor = 0;}
	}
	if(keyDown){
		if(--menuCursor < 0){menuCursor = menuItems - 1;}
	}
	
	if(
		keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)
	){
		menuTargetX = guiWidth + 200;
		menuCommitted = menuCursor;
		scScreenShake(4, 30);
		menuControl = false;
		audio_play_sound(snDeath, 2, false);
	}
}

if(menuX > guiWidth + 150 && menuCommitted != -1){
	switch(menuCommitted){
		//New Game
		case 3: default:
			global.kills = 0;
			global.coins = 0;
			global.redCoins = 0 ;
			global.hasweapon = false;
			scSlideTransition(TRANS_MODE.GOTO, rForest);
		break;
		
		//Continue
		case 2:
			if(!file_exists(SAVEFILE)){
				global.kills = 0;
				global.coins = 0;
				global.redCoins = 0 ;
				global.hasweapon = false;
				scSlideTransition(TRANS_MODE.GOTO, rForest);
			}else{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				global.kills = file_text_read_real(file);
				global.coins = file_text_read_real(file);
				global.redCoins = file_text_read_real(file);
				global.hasweapon = false  ;
				file_text_close(file);
				scSlideTransition(TRANS_MODE.GOTO, target)
			}
		break;
		
		//Option
		case 1:
			if(!instance_exists(oOption)){
				instance_create_layer(RES_W_HALF, 225, "Layer0", oOption);
			}else if(keyboard_check_pressed(vk_enter)){
				instance_destroy(oOption);
				menuTargetX = guiWidth - guiMargin;
				menuCommitted = -1;
				menuControl = true;
			}
		break;
		
		//Quit
		case 0: game_end(); break;
	}
}