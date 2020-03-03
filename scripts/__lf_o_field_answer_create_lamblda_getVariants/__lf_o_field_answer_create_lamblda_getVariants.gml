/// __lf_o_field_answer_create_lamblda_getVariants(_arr)
//!#lambda lamblda_getVariants($)
var _arr = argument0;
 {
	for( var a = 0; a < array_length_1d(_arr); a++) {
		var get = _arr[@ a];
		if is_string(get){
			variants[array_length_1d(variants)] = get;
		} else {
			script_execute(getVariants, get[? ds_map_find_first(get)]);
		}
	}
}