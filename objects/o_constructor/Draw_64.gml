
draw_text(760, 150, "Загадка №" + string(constNum + 1));
value = array_length_1d(constList);
if (value < constNum + 1) {
	value = constNum + 1;
} else {
	value = value;
}
draw_text(760, 135 + 32, string(constNum + 1) + "/" + string(value));
