{
	// Снежинка
	global.pt_snow = part_type_create();
	var pt = global.pt_snow;
	// Её свойства
	part_type_shape(pt, pt_shape_snow);
	part_type_size(pt, 0.1, 0.2, 0, 0);
	part_type_color1(pt, c_white);
	part_type_speed(pt, 1, 2, 0, 0);
	part_type_direction(pt, 270, 270, 0, 40);
	part_type_life(pt, 500, 500);
}