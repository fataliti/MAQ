
if yto != undefined {
	y = lerp(yto, y, 0.65);
	if abs(y-yto)<1 {
		y = yto;
		yto = undefined;
	}
}