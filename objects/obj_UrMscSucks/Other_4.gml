/// @desc
switch(room){
	case rm_Menu:
		if (currentMsc != snd_msc_Menu){
			if (audio_is_playing(currentMsc)){
				audio_stop_sound(currentMsc);
				currentMsc = snd_msc_Menu;
				audio_play_sound(currentMsc, 0, true);
			} else {
				currentMsc = snd_msc_Menu;
			}
		}
	break;
	case rm_Arcade:
		if (currentMsc != snd_msc_Game){
			if (audio_is_playing(currentMsc)){
				audio_stop_sound(currentMsc);
				currentMsc = snd_msc_Game;
				audio_play_sound(currentMsc, 0, true);
			} else {
				currentMsc = snd_msc_Game;
			}
		}
	break;
	case rm_ezMode:
		if (currentMsc != snd_msc_Game){
			if (audio_is_playing(currentMsc)){
				audio_stop_sound(currentMsc);
				currentMsc = snd_msc_Game;
				audio_play_sound(currentMsc, 0, true);
			} else {
				currentMsc = snd_msc_Game;
			}
		}
	break;
	case rm_Endroom:
		if (currentMsc !=snd_msc_End){
			if (audio_is_playing(currentMsc)){
				audio_stop_sound(currentMsc);
				currentMsc = snd_msc_End;
				audio_play_sound(currentMsc, 0, true);
			} else {
				currentMsc = snd_msc_End;
			}
		}
	break;
}