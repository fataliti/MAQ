/// __lf_o_constructor_create_roundAdd()
//!#lambda roundAdd($)
 {
	var newRound = [];
	newRound[EConstruct.Name]		= o_constrFildName.fieldString;
	newRound[EConstruct.Pic]		= o_constrFildPic.fieldString;
	newRound[EConstruct.SongLink]	= o_constrFildSong.fieldString;
	newRound[EConstruct.Time]		= o_constrFildTime.fieldString;
	constList[constNum] = newRound;
	
	o_constrFildName.fieldString = "";
	o_constrFildPic.fieldString = "";
	o_constrFildSong.fieldString = "";
	o_constrFildTime.fieldString = "";
}