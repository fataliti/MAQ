if global.server != -1 {
    if keyboard_check_pressed( vk_shift) {
        var file = get_open_filename("txt|*.txt", "");
        if file != ""{
            file = file_text_open_read( file);
            if file != -1 {
                trace_mf0 "file open" trace_mf1;
                ds_list_clear( game_list);

                //  пример файла для чтения
                /* 
                название 1
                ссылка_на_картинку1
                сылка_на_песню1
                
                название 2
                
                сылка_на_песню2
                
                
                название 3
                ссылка_на_картинку3
                сылка_на_песню3
                */
                
                var roundName = ""; 
                var roundPic  = ""; 
                var roundLink = "";

                var line;
                var lineN = 0;
                var parseStrings = false;
                
                while !file_text_eof(file) {
                    line = file_text_read_string( file);
                    if string_length( line) != 0 { /// госпади хоть бы просто пробелов в строке не было аъааъъаъа
                        parseStrings = true;
                    } 
                    
                    if parseStrings {
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
                                
                                ds_list_add(game_list, string([roundName, roundPic, roundLink]));
                                
                                roundName = ""; 
                                roundPic = ""; 
                                roundLink = "";
                                lineN = 0;
                                parseStrings = false;
                                break;
                        }
                    }
                    file_text_readln(file);
                }
                file_text_close(file);
                
                trace_mf0 "close file" trace_mf1;
            }
        }
    }
}