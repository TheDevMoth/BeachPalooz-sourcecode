/// @function draw_normally(sprite, x, y)
/// @desc Draw the sprite like self draw
/// @param sprite
/// @param x
/// @param y
function draw_normally() {

	var Sprite = argument[0];
	var _x = argument[1];
	var _y = argument[2];

	if (!sprite_exists(Sprite) || argument_count < 3){ 
		show_debug_message("Naaaaah"); 
	} else {
		var _speed = sprite_get_speed(Sprite);
		var seconds = floor(current_time/100);
		var remainder = seconds - floor(seconds/_speed)*_speed;
		draw_sprite(Sprite,remainder,_x,_y)
	}


}
