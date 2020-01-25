
if (async_load[? "id"] == songLink) {
    var songSize = async_load[? "contentLength"];  
    var songDownloaded = async_load[? "sizeDownloaded"]; 
    
    if (async_load[? "result"] == undefined) {
        songLoading = songDownloaded / songSize;
	} else {
        songLoading = 1;
        songFile = audio_create_stream(working_directory + "guess.song");
        songLink = -1;
        
        if (o_control.countdown > 0) {
			// todo: вынести в настройки loop: true/false
            mediaPlayer = audio_play_sound(songFile, 10, false);
        }
    }
}

if async_load[? "id"] == songPic {
	if async_load[? "result"] != undefined {
		songSprite = sprite_add("guess.pic", 1, 0, 0, 0, 0);
		sprite_set_offset(songSprite, sprite_get_width(songSprite)/2, sprite_get_height(songSprite)/2);
		songPic = -1;
		
		if instance_exists(o_right_answer){
			o_right_answer.answerSprite = songSprite;
		}
	}
}
