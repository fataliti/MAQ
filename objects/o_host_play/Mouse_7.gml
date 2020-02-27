audio_play_sound(a_but_host, 10, false);

var sendbuf = buffer_create( 8, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, ESong.play);
buffer_write(sendbuf, buffer_u8, o_control.roundTime);
buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.pic]);

if o_control.roundTime > 0
	o_control.countdown = o_control.roundTime;
else 
	o_control.countdown = infinity;

sendAll(sendbuf);

global.gameState = ESong.play;

instance_activate_object(o_host_hint);
instance_activate_object(o_host_answer);
instance_deactivate_object(self);

if (o_control.songFile != -1) {
    o_control.mediaPlayer = playMusic(o_control.songFile);
}

o_control.songPic = http_get_file(o_history.game_arr[@ o_control.roundCurrent, EData.pic], "guess.pic");