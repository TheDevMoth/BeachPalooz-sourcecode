draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(txtFont);
draw_set_color(c_black);

if (mouse_check_button(mb_left) && isMouseOver){
	draw_sprite(sprite, 1, x, y);
	draw_text(x+1, y+1, txtString);
	draw_set_color(c_white);
	draw_text(x, y, txtString);
} else if (isMouseOver) {
	draw_sprite(sprite, 0, x, y);
	draw_text(x+1, y, txtString);
	draw_set_color(c_white);
	draw_text(x, y-1, txtString);
} else {
	draw_sprite(sprite, 0, x, y);
	draw_text(x+1, y+1, txtString);
	draw_set_color(c_white);
	draw_text(x, y, txtString);
}




