/// @desc
draw_self();

if (reserved){
	if (ownerType == "Friends"){
		draw_sprite(spr_visitor_settled,0,x,y);
	} else if (ownerType == "Family"){
		draw_sprite(spr_visitor_settled,1,x,y);
	} else if (ownerType == "Tannist"){
		draw_sprite(spr_visitor_settled,2,x,y);
	} else if (ownerType == "Tourist"){
		draw_sprite(spr_visitor_settled,3,x,y);
	} else if (ownerType == "Men"){
		draw_sprite(spr_visitor_settled,4,x,y);
	} else if (ownerType == "Women"){
		draw_sprite(spr_visitor_settled,5,x,y);
	}
	var timeLeft = floor(alarm_get(1)/room_speed);
	draw_set_color(c_black);
	draw_set_font(fnt_info);
	
	//if (mouseOver){
	//	if (alarm_get(2) == -1 && frame != 5){
	//		alarm[2] = 1;
	//	}
	//	draw_sprite(spr_umbrellaBox,frame,x,y);
	//	if (frame == 5) draw_text_transformed(x-sprite_xoffset+2,y-sprite_yoffset-9,+"Satisfaction:"+string(satisfactionScore)+" Time:"+string(timeLeft),0.75,0.75,0);
	//} else {
	//	if (alarm_get(2) == -1 && frame != 0){
	//		alarm[2] = 1;
	//	}
	//	draw_sprite(spr_umbrellaBox,frame,x,y);
	//}
	
	draw_sprite(spr_umbrellaBox,5,x,y+topPlaceOffset)
	draw_text_transformed(x-sprite_xoffset+2,y-sprite_yoffset-9+topPlaceOffset,+"Comfort: "+string(satisfactionScore)+" Time: "+string(timeLeft),0.75,0.75,0);
	draw_text_transformed(x-sprite_xoffset+2,y-sprite_yoffset+1+topPlaceOffset,ownerModifier+" "+ownerType/*+" "+string(satisfactionScore)+" "+string(timeLeft)*/,0.75,0.75,0);
} else {
	if (obj_TutorialControl.visitorChoosen){
		if (mouseOver){
			draw_normally(spr_highlight_settled,x,y);
		} else {
			draw_sprite(spr_highlight_settled,0,x,y);
		}
	}
}
