/// @param buffer
var buffer = argument0;
for (var i = 0; i < ds_list_size(connects); i++) {
    network_send_packet(connects[| i], buffer, buffer_tell(buffer));
}

buffer_delete(buffer);