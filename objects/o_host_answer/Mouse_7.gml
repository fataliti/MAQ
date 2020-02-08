audio_play_sound(a_but_host, 10, false);

script_execute(lambda_show_answer);

instance_activate_object(o_host_next);
instance_deactivate_object(o_host_hint);
instance_deactivate_object(self);
