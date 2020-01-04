if (async_load[? "id"] == songLink) {
    var songSize = async_load[? "contentLength"];  
    var songDownloaded = async_load[? "sizeDownloaded"]; 
    
    if (async_load[? "result"] == undefined) {
        songLoading = songDownloaded / songSize;
	} else {
        songLoading = 1;
        songFile = audio_create_stream(working_directory + "guess.song");
        songLink = -1;
        
        if (countdown > 0) {
			// todo: вынести в настройки loop true/false
            mediaPlayer = audio_play_sound(songFile, 10, false);
        }
    }
}