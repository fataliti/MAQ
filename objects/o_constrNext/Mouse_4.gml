with o_constructor script_execute(roundAdd);
o_constructor.constNum++;

if array_length_1d(o_constructor.constList) > o_constructor.constNum
	with o_constructor script_execute(roundExec);