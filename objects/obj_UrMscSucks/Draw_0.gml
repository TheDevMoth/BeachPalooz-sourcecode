/// @desc 

if (room == AppearingRoom){
	if (audio_is_playing(currentMsc)){
		draw_sprite(spr_UrMscSucks,0,x,y);
	} else {
		draw_sprite(spr_UrMscSucks,1,x,y);
	}
	
	draw_set_font(txtFont);
	draw_set_halign(fa_right); draw_set_valign(fa_center);
	draw_set_color(c_black);
	draw_text(x - sprite_xoffset/2 - string_length(text) - 4, y+1, text);
	draw_set_color(c_white);
	draw_text(x - sprite_xoffset/2 - string_length(text) - 3, y, text);
}