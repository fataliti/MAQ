/// @param snd
var snd = argument0;

var _snd = audio_play_sound(snd, 10, false);
audio_sound_gain(_snd, global.gain_music, 0);

return _snd;
