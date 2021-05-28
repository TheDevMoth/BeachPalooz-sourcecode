/// @desc
draw_set_font(fnt_Default);
draw_set_color(c_black);

switch(room){
	case rm_Endroom:
		draw_set_halign(fa_middle);
		draw_set_valign(fa_top);
		draw_rectangle_color(90,90,390,210,$FF41AFCB,$FF41AFCB,$FF41AFCB,$FF41AFCB,false);
		if (newHighscore){
			draw_text(room_width/2+1,95,"You have A new highscore: "+string(Score)+"!");
			draw_set_color(c_white);
			draw_text(room_width/2,94,"You have A new highscore: "+string(Score)+"!");
		} else {
			draw_text(room_width/2+1,95,"Your Score: "+string(Score));
			draw_set_halign(fa_left);
			draw_text(95,140,"Your Highscore: "+string(preHS));
			draw_set_color(c_white);
			draw_set_halign(fa_middle);
			draw_text(room_width/2,94,"Your Score: "+string(Score));
			draw_set_halign(fa_left);
			draw_text(94,139,"Your Highscore: "+string(preHS));
		}
		draw_set_color(c_black);
		draw_set_halign(fa_left);
		if (preRoom == "Hard"){
			draw_text(95,160,"Dev Highscore: 3005 \nTester Highscore: 2223");
			draw_set_color(c_white);
			draw_text(94,159,"Dev Highscore: 3005 \nTester Highscore: 2223");
		} else if (preRoom == "Easy"){
			draw_text(95,160,"Dev Highscore: 2053 \nTester Highscore: 1856");
			draw_set_color(c_white);
			draw_text(94,159,"Dev Highscore: 2053 \nTester Highscore: 1856");
		}
	break;
	case rm_Options:
		draw_set_halign(fa_top);
		draw_set_valign(fa_left);
		draw_rectangle_color(10,49,300,250,$FF41AFCB,$FF41AFCB,$FF41AFCB,$FF41AFCB,false)
		draw_text(16,61,"Programming and design by\nMohammed Abushawarib\n\nMusic by\nHitCtrl\nSnabisch\nAxton Crolley");
		draw_set_color(c_white);
		draw_text(15,60,"Programming and design by\nMohammed Abushawarib\n\nMusic by\nHitCtrl\nSnabisch\nAxton Crolley");
	break;
	case rm_Tutorial:
		if (read){
			draw_sprite(spr_Tutorial,3,0,0);
		} else if (clickedOnUmbrella){
			draw_sprite(spr_Tutorial,2,0,0);
			if (alarm_get(0) == -1){
				alarm[0] = room_speed*30;
			}
		} else if (clickedOnVisitor){
			draw_sprite(spr_Tutorial,1,0,0);
		} else {
			draw_sprite(spr_Tutorial,0,0,0);
		}
	break;
}