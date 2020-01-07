/// @param buffer
var buffer = argument0;
var con = o_control.connects;
for (var i = 0; i < ds_list_size(con); i++) {
    network_send_packet(con[| i], buffer, buffer_tell(buffer));
}

buffer_delete(buffer);