if part_type_exists(global.pt_snow) {
	with(o_snow)
		instance_destroy();
} else {
	instance_create_depth(0, 0, 0, o_snow);
}