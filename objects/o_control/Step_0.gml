
if audioOn {
	if !audio_is_playing(global.bgm) {
		var bgms = choose(
			bgm_mainmenu1,
			bgm_mainmenu2,
			bgm_mainmenu3
		);
		global.bgm = audio_play_sound(bgms, 10, false);
		audio_sound_gain(global.bgm, global.gain_bgm, 0);
	}
}