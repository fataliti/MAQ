
if yto != undefined {
	y = lerp(yto, y, 0.65);
	if abs(y-yto)<1 {
		y = yto;
		yto = undefined;
	}
}
/*
if image_alpha < 1 {
	image_alpha *= 0.98;
}
*/