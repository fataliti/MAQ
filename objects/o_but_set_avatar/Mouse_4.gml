playSe(a_but_mainmenu);

var pic = get_open_filename("*.png, *.jpg, *.jpeg|*.png;*.jpg;*.jpeg" ,"");
if (pic != "") {
    var spr = sprite_add(pic, 1, 0, 0, 0, 0);
    if (spr != -1) {
        var surf = surface_create(avatarSize, avatarSize);
        surface_set_target(surf);
        draw_clear_alpha(c_black, 0);
        draw_sprite_ext(spr, 0, 0, 0, avatarSize / sprite_get_width(spr), avatarSize / sprite_get_height(spr), 0, c_white, 1);    
        surface_reset_target();
        surface_save(surf, "avatar.png");
        
        if o_control.avatar != -1{
            sprite_delete(o_control.avatar);
        }
        o_control.avatar = sprite_create_from_surface(surf, 0, 0, avatarSize, avatarSize, 0, 0, 0, 0);
        sprite_index = o_control.avatar;
        surface_free(surf);
        sprite_delete(spr);
    }
}

//#event draw
//draw_self();
//draw_text(x, y, "Аватар");