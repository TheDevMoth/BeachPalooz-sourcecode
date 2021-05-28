canClick = mouse_over();

//Clicking the check
if (canClick == true) {
	if (mouse_check_button_released(mb_any)){
		if (audio_is_playing(currentMsc)){
			audio_stop_sound(currentMsc);
			ini_open("BeachPalooz.sav");
			ini_write_real("Options","Music",0);
			ini_close();
		} else {
			audio_play_sound(currentMsc, 0, true);
			ini_open("BeachPalooz.sav");
			ini_write_real("Options","Music",1);
			ini_close();
		}
	}
}

//Music shortcut
if (keyboard_check_released(ord("M"))) {
	if (audio_is_playing(currentMsc)){
		audio_stop_sound(currentMsc);
		ini_open("BeachPalooz.sav");
		ini_write_real("Options","Music",0);
		ini_close();
	} else {
		audio_play_sound(currentMsc, 0, true);
		ini_open("BeachPalooz.sav");
		ini_write_real("Options","Music",1);
		ini_close();
	}
}

//Check sprite toggle
if (audio_is_playing(currentMsc)){
	image_index = 0;
} else {
	image_index = 1;
}
