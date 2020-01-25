audio_play_sound(a_but_host, 10, false);

var sendbuf = buffer_create( 8, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, ESong.play);
o_control.countdown = timer;
sendAll(sendbuf);

global.gameState = ESong.play;

instance_activate_object(o_host_answ);
instance_activate_object(o_host_next);
instance_deactivate_object(self);


if (o_host.songFile != -1) {
    o_host.mediaPlayer = audio_play_sound(o_host.songFile, 10, false);
}