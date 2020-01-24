/// @description Статус загрузки песни
var status = buffer_create(24, buffer_grow, 1);
buffer_write(status, buffer_u8, ESong.status);
buffer_write(status, buffer_u8, _id);
buffer_write(status, buffer_u8, round(songLoading));
sendHost(status);

if (songLoading < 1) {
    alarm[0] = tickrate;
}