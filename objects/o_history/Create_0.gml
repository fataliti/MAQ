
game_arr = -1;
scrollPoint = 0;


scrolled = 0;
scrolledLerp = 0;

enum EData{
    name,
    pic,
    songLink,
    start,
}

load_txt = __lf_o_history_create_lambda_load_txt;

lambda_scroll_round = __lf_o_history_create_lambda_scroll_round;

historySurf = -1;
shaderCompiled = shader_is_compiled(sh_history);