
if coursorCollision() {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_yellow, 1);
	if LMB_mf0 {
		var newRound = [];
		newRound[EConstruct.Name]		= o_constrFildName.fieldString;
		newRound[EConstruct.Pic]		= o_constrFildPic.fieldString;
		newRound[EConstruct.SongLink]	= o_constrFildSong.fieldString;
		newRound[EConstruct.Time]		= o_constrFildTime.fieldString;
		constList[constNum] = newRound;
		
		var dir = get_save_filename_ext("txt|*.txt", nameForFile, program_directory, "Сохранить список");
		var file = file_text_open_write_ue( dir);
		trace_mf0 program_directory + nameForFile trace_mf1;
		for(var i = 0; i < array_length_1d(constList); i++) {
			var get = constList[@ i];
			for(var j = 0; j < array_length_1d(get); j++) {
				file_text_writeln_ue(file, get[@ j]);
			}
		}
		file_text_close_ue(file);
	}
}
else 
	draw_self();