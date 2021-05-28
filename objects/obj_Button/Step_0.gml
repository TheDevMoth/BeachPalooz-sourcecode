#region isMouseOver
if (mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y >= bbox_top && mouse_y <= bbox_bottom){
	isMouseOver = true;
} else {
	isMouseOver = false;
}
#endregion

#region Requirments for the button to be Clickable
//if (needsVariablesSet){
//	if (setOfVariablesNeeded == ""){
		
//	} 
//}
#endregion

#region Set of functions
if (buttonClickable){
	if (buttonFunction == "Go To Room"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			room_goto(roomToGo);
			//audio_play_sound(snd_button, 0, false);
		}
	} else if (buttonFunction == "Restart Game"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			//audio_play_sound(snd_button, 0, false);
			game_restart();
		}
	} else if (buttonFunction == "Quit Game"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			game_end();
		}
	}
}
#endregion
	  
	 
	 
#region Extra commands  
	#region Fade out
	/*
	  else if (buttonFunction == "Start Game"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			obj_Button.startDisappearing = true;
		}
	} 

	if (startDisappearing){
		drawAlpha -= 0.016;
		buttonClickable = false;
		if (drawAlpha <= 0){
			drawAlpha = 0;
		}
		draw_set_alpha(drawAlpha);
		if (drawAlpha == 0){
			startDisappearing = false;
			alarm[0] = room_speed;
		}
	} 
	*/
	#endregion
#endregion