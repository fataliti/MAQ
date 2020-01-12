{
	global.ps = part_system_create();
	em = part_emitter_create(global.ps);
	
	part_emitter_region(global.ps, em, 0, room_width, -16, 0, ps_shape_rectangle, ps_distr_linear);
	
	snowInit();
}