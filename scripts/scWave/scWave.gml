function scWave(_from, _to, _duration, _offset){
	var _wave = (_to - _from) * 0.5;
	return _from + _wave + sin(
		(((current_time * 0.001) + _duration * _offset) / _duration) * (pi * 2)
	) * _wave;
}