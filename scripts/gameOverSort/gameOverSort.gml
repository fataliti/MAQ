var grid = ds_grid_create(2, instance_number(o_player));
with(o_player){
	ds_grid_add(grid, 0, _id-1, id);
	ds_grid_add(grid, 1, _id-1, points);
}
ds_grid_sort(grid, 1, false);
for(var a = 0; a<ds_grid_height(grid); a++) {
	
	trace_mf0 [grid[# 0, a]._id, grid[# 0, a].points] trace_mf1;
	
	if a<=2{
		grid[# 0, a].place = a;
	}
	grid[# 0, a].yto = -30 + 55 * (a + 1);
}
o_control.gameOver = true;
ds_grid_destroy(grid);