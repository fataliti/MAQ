/// @param buffer
/// @param except
var buffer = argument0, except = argument1;

var getSock;
for (var i = 0; i < ds_list_size(connects); i++) {
    getSock = connects[| i];
    if getSock != except {
        network_send_packet(getSock, buffer, buffer_tell(buffer));
    }
}

buffer_delete(buffer);