isMouseOver = mouse_over();

//Set of functions
if (buttonFunction == "Resolution"){
	if (isMouseOver && mouse_check_button_released(mb_left)){
		if (resSetting < 2){
			resSetting += 1;
		} else {
			resSetting = 0;
		}
		switch (resSetting){
		case 0:
			window_set_size(960,540);
		break;

		case 1:
			window_set_size(1440,810);
		break;
			
		case 2:
			window_set_size(1920,1080);
		break;
		}
		ini_open("BeachPalooz.sav");
		ini_write_real("Options","Resolution",resSetting);
		ini_close();
		alarm[0] = 1;
		//audio_play_sound(snd_Click, 0, false);
	}
} else if (buttonFunction == "Fullscreen"){
	if (isMouseOver && mouse_check_button_released(mb_left)){
		if (window_get_fullscreen()){
			window_set_fullscreen(false);
			alarm[0] = 1;
		} else {
			window_set_fullscreen(true);
		}
		switch (resSetting){
		case 0:
			window_set_size(960,540);
		break;

		case 1:
			window_set_size(1440,810);
		break;
			
		case 2:
			window_set_size(1920,1080);
		break;
		}
		fulSetting = window_get_fullscreen();
		ini_open("BeachPalooz.sav");
		ini_write_real("Options","Fullscreen",fulSetting);
		ini_close();
		//audio_play_sound(snd_Click, 0, false);
	}
}