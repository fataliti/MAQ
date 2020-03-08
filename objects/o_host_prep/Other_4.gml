
if !o_control.isRepair {
	with(o_history) {
	    script_execute(o_history.load_txt);
	}
}
o_control.isRepair = false;