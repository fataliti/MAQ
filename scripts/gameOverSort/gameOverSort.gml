var grid = ds_grid_create(2, instance_number(o_player));
var p = 0;
with(o_player){
	ds_grid_add(grid, 0, p, id);
	ds_grid_add(grid, 1, p, points);
	p++;
}
ds_grid_sort(grid, 1, false);
for(var a = 0; a<ds_grid_height(grid); a++) {
	if a<=2{
		grid[# 0, a].place = a;
	}
	grid[# 0, a].yto = -30 + 55 * (a + 1);
}
o_control.gameOver = true;
ds_grid_destroy(grid);