var grid = ds_grid_create(2, instance_number(o_player));
var p = 0;
with(o_player){
	ds_grid_add(grid, 0, p, id);
	ds_grid_add(grid, 1, p, points);
	p++;
}
ds_grid_sort(grid, 1, false);

if global.server != -1 {
	var file = file_text_open_write_ue(program_directory + "LastGameResult.txt");
	var player;
	for(var i = 0; i<ds_grid_height(grid); i++) {
		player = grid[# 0,i];
		file_text_writeln_ue(file, string(i) + ". " + player.nickname + ": " + string(player.points));
	}
	file_text_close_ue(file);
}

for(var a = 0; a<ds_grid_height(grid); a++) {
	if a<=2{
		grid[# 0, a].place = a;
	}
	grid[# 0, a].yto = -30 + 55 * (a + 1);
}
o_control.gameOver = true;
ds_grid_destroy(grid);