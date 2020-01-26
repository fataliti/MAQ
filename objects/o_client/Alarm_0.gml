/// @description Статус загрузки песни
var status = buffer_create(24, buffer_grow, 1);
buffer_write(status, buffer_u8, ESong.status);
buffer_write(status, buffer_u8, _id);
buffer_write(status, buffer_u8, round(GetStatus()));
sendHost(status);

if (GetStatus() < 100) {
    alarm[0] = tickrate;
} else {
	o_control.songFile = audio_create_stream(GetPath_mf0);
	if o_control.countdown > 0 {
		o_control.mediaPlayer = playMusic(o_control.songFile);
	}
}