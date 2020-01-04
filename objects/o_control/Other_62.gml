
if async_load[? "id"] == song_link {
    var song_size_max = async_load[? "contentLength"];  
    var song_size_now = async_load[? "sizeDownloaded"]; 
    

    if song_size_max != undefined
        song_loaded = song_size_now / song_size_max;
        
        
    if async_load[? "result"] != undefined {
        song_loaded = 1;
        song_stream = audio_create_stream( working_directory + "round.song");
        song_link = -1;
        
        if game_timer > 0 {
            game_song = audio_play_sound( song_stream, 10, false);
        }
        
    }
}