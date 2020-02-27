
var allReady = true;
o_player_host.loading =  GetStatus() / 100;

with(o_player){
	if loading < 1 
		allReady = false;
}

if !allReady || GetStatus() < 100 {
	alarm[0] = tickrate;
} else {
	if o_control.songFile == -1
		o_control.songFile = audio_create_stream(GetPath_mf0);
	
	if o_control.countdown > 0 && !audio_is_playing(o_control.mediaPlayer) {
		o_control.mediaPlayer = playMusic(o_control.songFile);
	}
	trace_mf0 "loaded" trace_mf1;	
}


var sendbuf = buffer_create(128, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, ESong.status);
buffer_write(sendbuf, buffer_u8, instance_number(o_player));
with (o_player) {
    buffer_write(sendbuf, buffer_u8, _id);
    buffer_write(sendbuf, buffer_u8, round(loading * 100));
}
buffer_write(sendbuf, buffer_u8, GetStatus());
sendAll(sendbuf);
