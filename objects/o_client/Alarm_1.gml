/// @description Пинг

var sendPing = buffer_create(16, buffer_grow, 1);
buffer_write(sendPing, buffer_u8, EPing.check);
buffer_write(sendPing, buffer_u8, _id);
sendHost(sendPing);
response = current_time;

alarm[1] = room_speed * 1;
