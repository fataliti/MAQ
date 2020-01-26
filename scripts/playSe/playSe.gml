/// @param se
var se = argument0;

var _se = audio_play_sound(se, 5, false);
audio_sound_gain(_se, global.gain_se, 0);

return _se;
