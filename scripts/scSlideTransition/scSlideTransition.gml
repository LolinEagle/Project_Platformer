function scSlideTransition(){
	///@arg Mode : Sets transition mode between next, restard and goto.
	///@arg Targetroom : Target sets target room when using the goto mode.
	with(oPassage){
		mode = argument[0];
		if(argument_count > 1){target = argument[1]}
	}
}