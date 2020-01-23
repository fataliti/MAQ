
if audio_is_playing(global.bgm) {
	audio_stop_sound(global.bgm);
} else {
	global.bgm = audio_play_sound(choose(
					bgm_mainmenu1,
					bgm_mainmenu2,
					bgm_mainmenu3,
					bgm_mainmenu4,
					bgm_mainmenu5,
					bgm_mainmenu6,
					bgm_mainmenu7
					), 10, true);
	audio_sound_gain(global.bgm, global.gain_bgm, 0);
}