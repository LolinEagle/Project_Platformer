///@desc Display
if(global.gamePaused && room != room_first && !option){
	scDrawSetText(c_white, fRoboto24, fa_center, fa_middle);
	draw_rectangle(
		RES_W_HALF - 160, RES_H_HALF - 192,
		RES_W_HALF + 160, RES_H_HALF + 192,
		false
	);
	draw_set_color(c_black);
	draw_rectangle(
		RES_W_HALF - 156, RES_H_HALF - 188,
		RES_W_HALF + 156, RES_H_HALF + 188,
		false
	);
	draw_set_color(c_white);
	
	if(!pauseConfirmation){
		//Main
		draw_text(RES_W_HALF, RES_H_HALF - 128, "- Pause -");
		draw_text(RES_W_HALF, RES_H_HALF - 64, "Return");
		draw_text(RES_W_HALF, RES_H_HALF, "Menu");
		draw_text(RES_W_HALF, RES_H_HALF + 64, "Option");
		draw_text(RES_W_HALF, RES_H_HALF + 128, "Quit");
		switch(pauseCursor){
			case 0: draw_sprite(sPause, 0, RES_W_HALF - 96, RES_H_HALF - 64);
			break;
			case 1: draw_sprite(sPause, 0, RES_W_HALF - 96, RES_H_HALF);
			break;
			case 2: draw_sprite(sPause, 0, RES_W_HALF - 96, RES_H_HALF + 64);
			break;
			case 3: draw_sprite(sPause, 0, RES_W_HALF - 96, RES_H_HALF + 128);
			break;
		}
	}else{	
		//Pause Confirmation
		draw_text(RES_W_HALF, RES_H_HALF - 128, "Are you sure?");
		draw_text(RES_W_HALF, RES_H_HALF, "Yes");
		draw_text(RES_W_HALF, RES_H_HALF + 64, "No");
		switch(pauseCursor){
			case 10: draw_sprite(sPause, 0, RES_W_HALF - 96, RES_H_HALF);
			break;
			case 11: draw_sprite(sPause, 0, RES_W_HALF - 96, RES_H_HALF + 64);
			break;
		}
	}
}