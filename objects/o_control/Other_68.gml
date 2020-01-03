
var type = async_load[? "type"];

switch( type) {
    case network_type_connect:
        ds_list_add( connected_list, async_load[? "socket"]);
        trace_mf0 "new connect" trace_mf1;
        break;
    case network_type_disconnect:
        trace_mf0 "disconected" trace_mf1;
        break;
    case network_type_data:
        var buf = async_load[? "buffer"];
        receive_packet( buf);
        break;
}