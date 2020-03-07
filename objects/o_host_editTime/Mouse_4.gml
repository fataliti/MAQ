if global.gameState == ESong.next {
	newTime = get_string_async(@"Время на угадывание в секундах (целое число)
	0 = бесконечно (пока не покажете ответ)
	250 = максимум", string(o_control.roundTime));
}