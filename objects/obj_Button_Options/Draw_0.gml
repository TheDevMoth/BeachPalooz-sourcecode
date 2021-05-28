draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(txtFont);
draw_set_color(c_black);
//if (mouse_check_button(mb_left) && isMouseOver){
//	draw_sprite_ext(sprite, 1, x, y, 2, 2, 0, c_white, 1);
//} else if (isMouseOver) {
//	draw_sprite_ext(sprite, 2, x, y, 2, 2, 0, c_white, 1);
//} else {
//	draw_sprite_ext(sprite, 0, x, y, 2, 2, 0, c_white, 1);
//}

if (buttonFunction == "Resolution"){
	if (window_get_fullscreen()){
		var txt = "Fullscreen"
	} else {
		switch (resSetting){
			case 0:
				var txt = "Base";
			break;
			
			case 1:
				var txt = "Medium";
			break;
			
			case 2:
				var txt = "High";
			break;
		}
	}
} else if (buttonFunction == "Fullscreen"){
	switch (window_get_fullscreen()){
		case 1:
			var txt = "Fullscreen";
		break;
		
		case 0:
			var txt = "Windowed";
		break;
	}
}

draw_text(x,y-sprite_yoffset*1.5,buttonFunction);
if (buttonFunction == "Resolution" && window_get_fullscreen()){
	draw_sprite(sprite, 0, x, y);
	draw_text(x+1, y+1, txt);
	draw_set_color(c_white);
	draw_text(x, y, txt);
} else if (mouse_check_button(mb_left) && isMouseOver){
	draw_sprite(sprite, 1, x, y);
	draw_text(x+1, y+1, txt);
	draw_set_color(c_white);
	draw_text(x, y, txt);
} else if (isMouseOver) {
	draw_sprite(sprite, 0, x, y);
	draw_text(x+1, y, txt);
	draw_set_color(c_white);
	draw_text(x, y-1, txt);
} else {
	draw_sprite(sprite, 0, x, y);
	draw_text(x+1, y+1, txt);
	draw_set_color(c_white);
	draw_text(x, y, txt);
}
/*
draw_set_color(txtColor);
if (fontSize == "Big"){
	draw_text_transformed(x, y, txt, 1.5, 1.5, 0);
} else if (fontSize == "Small"){
	draw_text_transformed(x, y, txt, 0.8, 0.8, 0);
} else if (fontSize == "Med") {
	draw_text_transformed(x, y, txt, 1, 1, 0);
}

if (mouse_check_button(mb_left) && isMouseOver){
	draw_sprite_ext(Sprite, 0, x, y, 1, 1, 0, $FFD7F7FD, 1);
} else {
	draw_self();
}
*/