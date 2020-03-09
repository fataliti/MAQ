playSe(a_but_mainmenu);

var pic = get_open_filename("*.png, *.jpg, *.jpeg|*.png;*.jpg;*.jpeg" ,"");
if (pic != "") {
    var spr = sprite_add(pic, 1, 0, 1, 0, 0);
    if (spr != -1) {
        if o_control.avatar != -1{
            sprite_delete(o_control.avatar);
        }
        o_control.avatar = spr;
        sprite_index = o_control.avatar;
        sprite_save(spr, 0, "avatar.png");
        
        image_xscale = avatarSize / sprite_get_width(sprite_index);
        image_yscale = avatarSize / sprite_get_height(sprite_index);
    }
}