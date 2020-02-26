/// __lf_o_constructor_create_roundExec()
//!#lambda roundExec($)
 {
	var get = constList[@ constNum];
	o_constrFildName.fieldString = get[@ EConstruct.Name];
	o_constrFildPic.fieldString  = get[@ EConstruct.Pic];
	o_constrFildSong.fieldString = get[@ EConstruct.SongLink];
	o_constrFildTime.fieldString = get[@ EConstruct.Time];
}