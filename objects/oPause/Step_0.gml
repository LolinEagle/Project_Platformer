///@desc Pause logic
if(global.gamePaused && room != room_first){
	//Validate the choice
	if(keyboard_check_pressed(vk_enter)){
		//Return
		if(pauseCursor = 0){global.gamePaused = false;}

		#region Menu
		if(pauseMenu){
			//Yes(Go to Menu)
			if(pauseCursor = 10){global.gamePaused = false; room_goto(rMenu);}
			
			//No(Go Back)
			if(pauseCursor = 11){scPauseMenu(0, false, false);}
			exit;
		}
		if(pauseCursor = 1){scPauseMenu(10, true, true);}#endregion
		
		//Option
		if(pauseCursor = 2){
			scCameraGetView();
			option = !option;
			if(option){
				instance_create_layer(
					cx + RES_W_HALF, cy + 225, "Layer0", oOption
				);
			}else{
				instance_destroy(oOption);
			}
		}
		
		#region Quitter
		if(pauseQuit){
			//Yes(Quit)
			if(pauseCursor = 10){game_end();}
			
			//No(Go Back)
			if(pauseCursor = 11){scPauseQuit(0, false, false);}exit;
		}
		if(pauseCursor = 3){scPauseQuit(10, true, true)}#endregion
	}

	//Press DOWN
	if(!option){
		if(
			keyboard_check_pressed(global.gameDown) || keyboard_check_pressed(vk_down)
		){
			pauseCursor++;
			if(!pauseConfirmation){
				if(pauseCursor > 3){pauseCursor = 0;}
			}else{
				if(pauseCursor > 11){pauseCursor = 10;}
			}
		}
	
		//Press UP
		if(
			keyboard_check_pressed(global.gameUp) || keyboard_check_pressed(vk_up)
		){
			pauseCursor--;
			if(!pauseConfirmation){
				if(pauseCursor < 0){pauseCursor = 3;}
			}else{
				if(pauseCursor < 10){pauseCursor = 11;}
			}
		}
	}
}