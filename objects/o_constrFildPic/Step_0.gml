
if LMB_mf0 {
	if inRect_mf0 x-48 inRect_mf1  y inRect_mf2  x-48+36 inRect_mf3  y+24 inRect_mf4 {
		if clipboard_has_text(){
			fieldString = clipboard_get_text();
		}
	}
	
	if coursorCollision() 
		fieldString = get_string("Ссылка на картинку (не обязательна)", "");
	
}