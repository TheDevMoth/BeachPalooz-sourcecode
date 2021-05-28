//Place object in starting room then choose the room it appears in variable definitions
if (instance_number(obj_UrMscSucks) > 1){
	instance_destroy()	
}
currentMsc = snd_msc_Menu;
if (file_exists("BeachPalooz.sav")){
	ini_open("BeachPalooz.sav");
	var msc = ini_read_real("Options","Music",1);
	if (msc == 1){
		audio_play_sound(currentMsc, 0, true);
	}
	ini_close();
} else {
	audio_play_sound(currentMsc, 0, true);
}
