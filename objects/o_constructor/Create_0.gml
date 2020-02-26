nameForFile = "ListSongs" + string(current_year) + "-" + string(current_month) + "-" + 
string(current_day) + "-" + string(current_hour) + "-" + string(current_minute) + ".txt";

constNum  = 0;
constList = [];

enum EConstruct {
	Name,
	Pic,
	SongLink,
	Time,
}


roundExec = __lf_o_constructor_create_roundExec;

roundAdd = __lf_o_constructor_create_roundAdd;