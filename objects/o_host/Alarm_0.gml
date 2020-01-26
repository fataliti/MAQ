
window_set_caption(GetStatus());

if GetStatus()<100
	alarm[0] = tickrate;
else  {
	o_control.songFile = audio_create_stream(GetPath_mf0);
	if o_control.countdown > 0 {
		o_control.mediaPlayer = playMusic(o_control.songFile);
	}
	trace_mf0 "loaded" trace_mf1;
}