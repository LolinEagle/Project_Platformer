function scScreenShake(_magnitude, _duration){
	with(oCamera){
		if(argument0 > shakeRemain){
			shakeMagnitude = _magnitude;
			shakeRemain = _magnitude;
			shakeLength = _duration;
		}
	}
}