
color_mf0 c_white color_mf1;
var ctrl = o_control;

if (ctrl.countdown > 0) {
    ctrl.countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(480, 55, ceil(ctrl.countdown));
    	
    	
	if !surface_exists(timerSurf)
		timerSurf = surface_create(60, 60);
	
	color_mf0 c_white color_mf1;
	surface_set_target(timerSurf);
	draw_clear_alpha(c_black, 0);
	
	var _xx = 30;
	var _yy = 30;
	
	draw_primitive_begin(pr_trianglefan);
	draw_vertex(_xx, _yy);
	var angle = 360 * (ctrl.countdown / ctrl.roundTime);
	for(var a = 0; a < angle; a += 3)
		draw_vertex(_xx + lengthdir_x(30, a + 90), _yy + lengthdir_y(30, a + 90));
	draw_primitive_end();
	
	gpu_set_blendmode(bm_subtract);
	draw_circle(_xx, _yy, 25, false);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface(timerSurf, 480 - 30, 15);
    	
    	
    if global.server != -1 {
    	
    
	    if (ctrl.countdown <= 0) {
	        with(o_host_answer){
	        	script_execute(lambda_show_answer);
	        }
	        
	        instance_deactivate_object(o_host_hint);
	        instance_deactivate_object(o_host_answer);
	        instance_activate_object(o_host_next);
	    }
    }
}