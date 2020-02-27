/// __lf_o_constructor_create_roundsOpen()
//!#lambda roundsOpen($)
 {
	var file = get_open_filename("*.txt|*.txt", "");
    if (file != "") {
	    constNum  = 0;
		constList = [];
    
	    file = file_text_open_read(file);
	    if (file != -1) {
	        var roundName = ""; 
	        var roundPic  = ""; 
	        var roundLink = "";
	        var roundTime = "";
	        var line;
	        var lineN = 0;
	        var parseStrings = false;
	        var arr_stroka;
    	
	        while (!file_text_eof(file)) {
	            line = file_text_read_string( file);
	            if (string_length(line) != 0) {
	                parseStrings = true;
	            } 
    	
	            if (parseStrings) {
	                lineN++;
	                switch( lineN){
	                    case 1: 
	                        roundName = line; 
	                        break;
	                    case 2: 
	                        roundPic = line; 
	                        break;
	                    case 3: 
	                        roundLink = line; 
	                        break;
	                    case 4:
							roundTime = line;
							if roundTime == ""
								roundTime = "0";

							arr_stroka = array_length_1d(constList);
    						var newRound = [];
							newRound[EConstruct.Name]		= roundName; 
							newRound[EConstruct.Pic]		= roundPic;
							newRound[EConstruct.SongLink]	= roundLink;
							newRound[EConstruct.Time]		= roundTime;
    						constList[arr_stroka] = newRound;
    						
    						
	                        roundName = ""; 
	                        roundPic = ""; 
	                        roundLink = "";
	                        roundTime = "";
	                        lineN = 0;
	                        parseStrings = false;

							break;
	                }
	            }
	            file_text_readln(file);
	        }
	        
	        file_text_close(file);
	        if arr_stroka > 0
	        	script_execute(__lf_o_constructor_create_roundExec);
	        
	    }
    }
}