
if async_load[? "id"] == newTime {
	
	if async_load[? "result"] != "" {
	
		var _newTime = async_load[? "result"];
		_newTime = string_digits(_newTime);
	
		if _newTime != "" {
			_newTime = round(real(_newTime));
			_newTime = clamp(_newTime, 0, 250);
			o_control.roundTime = _newTime;
		}
	}
	
	newTime = -1;
}