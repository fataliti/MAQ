
color_mf0 c_white color_mf1;
var ctrl = o_control;
draw_text(x, y + 3, string(ctrl.roundCurrent+1) +" / "+ string(ctrl.roundTotal+1));

if (ctrl.countdown > 0) {
    ctrl.countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(480, 45, ceil(ctrl.countdown));
    
    
    
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

