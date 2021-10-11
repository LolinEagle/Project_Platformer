if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	if(mode != TRANS_MODE.CHECKPOINT){
		draw_rectangle(0, 0, w, percent * hHalf, false);
		draw_rectangle(0, h, w, h - (percent * hHalf), false);
	}else{
		draw_rectangle(0, 0, w, h, false);
	}
}