
global.pt_snow = -1;

exist = true;
if (!variable_global_exists("ps") || !part_type_exists(global.ps)) && o_control.snowOn
{
	global.ps = part_system_create();
	em = part_emitter_create(global.ps);
	part_emitter_region(global.ps, em, 0, room_width, -16, 0, ps_shape_rectangle, ps_distr_linear);
	snowInit();
	part_emitter_stream(global.ps, em, global.pt_snow, 1);
} else {
	exist = false;
	instance_destroy();
}
