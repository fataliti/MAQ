
if yto != -1 {
	y = lerp(yto, y, 0.65);
	if abs(y-yto)<1 {
		y = yto;
		yto = -1;
	}
}

if image_alpha < 1 {
	image_alpha *= 0.98;
}