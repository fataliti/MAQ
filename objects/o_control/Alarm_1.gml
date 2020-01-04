/// @description Пинг
/*
if global.socket != -1 {
    var sendbuf = buffer_create( 16, buffer_grow, 1);
    buffer_write( sendbuf, buffer_u8, ENET.ping_chek);
    buffer_write( sendbuf, buffer_u8, my_id);
    sendhost( sendbuf);
    ping_time_send = current_time;
}

alarm[ 1] = room_speed * 1;