playSe(a_but_host);

var sendbuf = buffer_create( 16, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, ESong.prepare);
buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.songLink]); 
buffer_write(sendbuf, buffer_u8, o_control.roundTime); 
buffer_write(sendbuf, buffer_u8, o_history.game_arr[@ o_control.roundCurrent, EData.start]); 
sendAll(sendbuf);


GetMedia(o_history.game_arr[@ o_control.roundCurrent, EData.songLink], 
		o_control.roundTime,
		o_history.game_arr[@ o_control.roundCurrent, EData.start]);
o_host.alarm[0] = tickrate;
global.gameState = ESong.prepare;

instance_activate_object(o_host_play);
instance_deactivate_object(self);
