/// @desc
ini_open("BeachPalooz.sav");
if (buttonFunction == "Resolution"){
	resSetting = ini_read_real("Options","Resolution",4);
} else if (buttonFunction == "Fullscreen"){
	fulSetting = ini_read_real("Options","Fullscreen",4);
	resSetting = ini_read_real("Options","Resolution",4);
}
ini_close();
alarm[1] = 1;