//Can't double jump
with(oPlayer){
	if(vspd != 0){canJump = false;}
}

//Can't land in the Platform
if(oPlayer.bbox_bottom > y && place_meeting(x, y, oPlayer)){
	with(oPlayer){fall = true;}
}