/// @desc
newHighscore = false;
preHS = 0;
ini_open("BeachPalooz.sav");
var resSetting = ini_read_real("Options","Resolution",0);
ini_write_real("Options","Resolution",resSetting);
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
var fulSetting = ini_read_real("Options","Fullscreen",0);
ini_write_real("Options","Fullscreen",fulSetting);
window_set_fullscreen(fulSetting);
ini_close();
alarm[1] = 1;
read = false;
clickedOnUmbrella = false;
clickedOnVisitor = false;