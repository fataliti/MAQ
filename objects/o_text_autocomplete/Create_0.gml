

testBD = [
"call",
"cat",
"gatari",
"naruto",
"fait",
"anime",
"anata",
"boruto",
"clover",
"initialD",
];

/*
	ну и говно
	да еще и не факт что работает
	UPD: ну кажется что-то да работает
	
	надо что-то другое наверное придумать
	ето штука тока разбивает слова для структуры
*/

titleMap = ds_map_create();
var get, i, j, k, char, map, mapget, wordlen, _mapget;
for (i = 0; i < array_length_1d(testBD); i++) {

	trace_mf0 "====================================" trace_mf1;
	get = testBD[@ i];
	map = titleMap;
	wordlen = string_length(get);
	trace_mf0 get trace_mf1;
	for (j = 1; j != string_length(get)+1; j++){
		char = string_char_at(get, j);
		trace_mf0 char trace_mf1;
		
		
		mapget = map[? char];
		if mapget == undefined {
			if j == wordlen {
				trace_mf0 "simple word create" trace_mf1;
				map[? char] = [get];
			} else {
				trace_mf0 "map create" trace_mf1;
				var _map = ds_map_create();
				map[? char] = [_map];
				map = _map;
			}
		} else {
			
			if j == wordlen {
				mapget[array_length_1d(mapget)] = get;
				map[? char] = mapget;
				trace_mf0 "word add" trace_mf1;
			} else {
				var find = false;
				for(k = 0; k < array_length_1d(mapget); k++) {
					_mapget = mapget[@ k];
					if !is_string(_mapget) {
						if _mapget[? string_char_at(get, j+1)] != undefined {
							trace_mf0 "map found" trace_mf1;
							map = _mapget;
							find = true;
							break;
						}
					}
				}
				if !find {
					map = ds_map_create();
					mapget[array_length_1d(mapget)] = map;
					map[? char] = mapget;
					trace_mf0 "map not found" trace_mf1;
				}
			}
		}
	}
	
	trace_mf0 "----------------------------------------" trace_mf1;
}

my_string = "";