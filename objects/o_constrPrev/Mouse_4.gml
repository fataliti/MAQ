

with o_constructor script_execute(roundAdd);
o_constructor.constNum--;
if o_constructor.constNum < 0 
	o_constructor.constNum = 0;
with o_constructor script_execute(roundExec);