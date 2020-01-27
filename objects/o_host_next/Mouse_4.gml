audio_play_sound(a_but_host, 10, false);

if o_control.roundCurrent == o_control.roundTotal{
    //Показывается пабедитель
    //Наверное
	ResetStatus();
	trace_mf0 GetStatus() trace_mf1;
    trace_mf0 "ИГРА ЗАКОНЧЕНА" trace_mf1;
    exit;
}

var sendbuf = buffer_create( 8, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, ESong.next);
o_control.roundCurrent++;
o_control.hinted = false;
with(o_player)		 {answer = "";}
with(o_right_answer) {instance_destroy();}

global.gameState = ESong.next;

sendAll(sendbuf);
instance_activate_object(o_host_prep);
instance_deactivate_object(o_host_next);
instance_deactivate_object(self);

ResetStatus();


