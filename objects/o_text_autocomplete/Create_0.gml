
testBD = [];
var _size = 0;

var file = file_text_open_read_ue(filename_path("animes.txt")+"animes.txt");
while !file_text_eof_ue(file) {
	var line = file_text_readln_ue(file);
	testBD[_size] = line;
	_size++;
}
file_text_close_ue(file);

/*
	ну и говно
	да еще и не факт что работает
	UPD: ну кажется что-то да работает
	UPD: теперь не работает
	UPD: а нет, все работает, просто регистр строгий
	
	надо что-то другое наверное придумать
	ето штука тока разбивает слова для структуры
*/

global.titleMap = ds_map_create();

var get, i, j, k, char, map, mapget, wordlen, _mapget;
for (i = 0; i < array_length_1d(testBD); i++) {

	//trace("====================================");
	get = testBD[@ i];
	map = global.titleMap;
	wordlen = string_length(get);
	//trace(get);
	for (j = 1; j != string_length(get)+1; j++){
		char = string_char_at(get, j);
		//trace(char);
		mapget = map[? char];
		if mapget == undefined {
			if j == wordlen {
				map[? char] = [get];
				//trace(["simple word create", map[? char]]);
			} else {
				var _map = ds_map_create();
				map[? char] = [_map];
				//trace(["map create", map[? char]]);
				map = _map;
			}
		} else {
			if j == wordlen {
				mapget[array_length_1d(mapget)] = get;
				map[? char] = mapget;
				//trace(["word add", mapget]);
			} else {
				var find = false;
				for(k = 0; k < array_length_1d(mapget); k++) {
					_mapget = mapget[@ k];
					if !is_string(_mapget) {
						if _mapget[? string_char_at(get, j+1)] != undefined {
							map = _mapget;
							find = true;
							//trace(["map found", mapget]);
							break;
						}
					}
				}
				if !find {
					_map = ds_map_create();
					mapget[array_length_1d(mapget)] = _map;
					map[? char] = mapget;
					map = _map;
					//trace(["map not found", mapget]);
				}
			}
		}
	}
	//trace("----------------------------------------");
}

my_string = "";
getVariants = __lf_o_text_autocomplete_create_lamblda_getVariants;