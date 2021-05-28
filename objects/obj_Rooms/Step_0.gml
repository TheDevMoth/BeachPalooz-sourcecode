/// @desc
switch(room){
	case rm_Menu:
	
	break;
	case rm_Arcade:
	//	if (keyboard_check_released(ord("S"))){
	//		with(obj_Umbrella){
	//			if (reserved){
	//				event_user(1);
	//			}
	//		}
	//		Score = obj_GameControl.Score;
	//		obj_Rooms.preRoom = "Hard";
	//		room_goto(rm_Endroom);
	//	}
	break;
	case rm_ezMode:
		//if (keyboard_check_released(ord("S"))){
		//	with(obj_ezUmbrella){
		//		if (reserved){
		//			event_user(1);
		//		}
		//	}
		//	Score = obj_ezGameControl.Score;
		//	obj_Rooms.preRoom = "Easy";
		//	room_goto(rm_Endroom);
		//}
	break;
	case rm_Endroom:
	
	break;
	case rm_Tutorial:
		if (keyboard_check_released(vk_escape)){
			game_restart();
		}
	break;
}
//if (keyboard_check_released(ord("R"))){
//	game_restart();
//}
if (keyboard_check_released(vk_f11)){
	if (window_get_fullscreen()){
			window_set_fullscreen(false);
			alarm[1] = 1;
		} else {
			window_set_fullscreen(true);
		}
	fulSetting = window_get_fullscreen();
	ini_open("BeachPalooz.sav");
	ini_write_real("Options","Fullscreen",fulSetting);
	ini_close();
}