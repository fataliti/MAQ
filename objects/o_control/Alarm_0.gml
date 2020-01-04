/// @description Загрузка ранунда

var sendbuf = buffer_create( 24, buffer_grow, 1);
buffer_write( sendbuf, buffer_u8, ENET.game_round_preparing_perc);
buffer_write( sendbuf, buffer_u8, my_id);
buffer_write( sendbuf, buffer_u8, round( song_loaded * 100));
sendhost( sendbuf);

if song_loaded < 1
    alarm[ 0] = tickrate;
    