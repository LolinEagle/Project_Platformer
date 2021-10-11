with(oPlayer){
	if(hascontrol){
		hascontrol = false;
		scSlideTransition(TRANS_MODE.GOTO, other.target);
	}
}