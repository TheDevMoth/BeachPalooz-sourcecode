/// @desc
switch(room){
	case rm_Endroom:
		if (preRoom == "Hard"){
			if (file_exists("BeachPalooz.sav")){
				ini_open("BeachPalooz.sav");
				preHS = ini_read_real("Highscore","Highscore Hard",0);
				if (round(Score) > preHS){
					ini_write_real("Highscore","Highscore Hard",Score);
					newHighscore = true;
				} else {
					newHighscore = false;
				}
			}
		} else if (preRoom == "Easy"){
			if (file_exists("BeachPalooz.sav")){
				ini_open("BeachPalooz.sav");
				preHS = ini_read_real("Highscore","Highscore Easy",0);
				if (round(Score) > preHS){
					ini_write_real("Highscore","Highscore Easy",Score);
					newHighscore = true;
				} else {
					newHighscore = false;
				}
			}
		}
		
	break;
}