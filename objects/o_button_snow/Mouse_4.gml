if instance_exists(o_snow) {
	o_control.snowOn = false;
	with(o_snow)
		instance_destroy();
} else {
	o_control.snowOn = true;
	instance_create_depth(0, 0, 0, o_snow);
}