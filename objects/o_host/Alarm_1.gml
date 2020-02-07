
var sendbuf = buffer_create(128, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, EPing.get);
buffer_write(sendbuf, buffer_u8, instance_number(o_player));
with(o_player) {
	buffer_write(sendbuf, buffer_u8, _id);
	buffer_write(sendbuf, buffer_u16, ping);
}
sendAll(sendbuf);
alarm[1] = room_speed;