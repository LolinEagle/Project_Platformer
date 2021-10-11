//Player
if(instance_exists(oPlayer)){
	if(oPlayer.x < neoLeft){oPlayer.x = neoRight;}
	if(oPlayer.x > neoRight){oPlayer.x = neoLeft;}
}