
timerSurf = surface_create(80, 80);

shaderCompiled = shader_is_compiled(sh_timer);

if shaderCompiled {
	_timeMax = shader_get_uniform(sh_timer, "timeMax");
	_timeCur = shader_get_uniform(sh_timer, "timeCur");
}