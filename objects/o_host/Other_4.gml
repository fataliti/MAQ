/// @description 
o_player_host.nickname = o_control.nickname;
if (o_control.avatar != -1) {
	var surf = surface_create(32, 32);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    draw_sprite_ext(o_control.avatar, 0, 0, 0, 0.25, 0.25, 0, c_white, 1);
    o_player_host.avatar = sprite_create_from_surface(surf, 0, 0, 32, 32, 0, 0, 0, 0);
    surface_reset_target();
    surface_free(surf);
	
}