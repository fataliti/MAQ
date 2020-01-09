
if room == rm_game {

	if (global.server != -1) {
		with (o_field_answer) {
	        instance_destroy();
	    }
	} else {
		with(o_host_prep) {instance_destroy();}
		with(o_host_play) {instance_destroy();}
		with(o_host_answ) {instance_destroy();}
		with(o_host_next) {instance_destroy();}
	}

}
