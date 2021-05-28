/// @desc
#region drawing the new visitors
 //first visitors
if (visitorTypes[|0] == "Friends"){
	draw_sprite(spr_visitor,0,30,202);
} else if (visitorTypes[|0] == "Family"){
	draw_sprite(spr_visitor,1,30,202);
} else if (visitorTypes[|0] == "Tannist"){
	draw_sprite(spr_visitor,2,30,202);
} else if (visitorTypes[|0] == "Tourist"){
	draw_sprite(spr_visitor,3,30,202);
} else if (visitorTypes[|0] == "Men"){
	draw_sprite(spr_visitor,4,30,202);
} else if (visitorTypes[|0] == "Women"){
	draw_sprite(spr_visitor,5,30,202);
} else if (visitorTypes[|0] == "Rich"){
	draw_sprite(spr_visitor,8,30,202);
} else if (visitorTypes[|0] == "Barbecuer"){
	draw_sprite(spr_visitor,6,30,202);
} else if (visitorTypes[|0] == "conservative"){
	draw_sprite(spr_visitor,1,30,202);
} else if (visitorTypes[|0] == "Poor"){
	draw_sprite(spr_visitor,0,30,202);
} else if (visitorTypes[|0] == "Creep"){
	draw_sprite(spr_visitor,7,30,202);
}

 //second visitors
if (visitorTypes[|1] == "Friends"){
	draw_sprite(spr_visitor,0,30,247);
} else if (visitorTypes[|1] == "Family"){
	draw_sprite(spr_visitor,1,30,247);
} else if (visitorTypes[|1] == "Tannist"){
	draw_sprite(spr_visitor,2,30,247);
} else if (visitorTypes[|1] == "Tourist"){
	draw_sprite(spr_visitor,3,30,247);
} else if (visitorTypes[|1] == "Men"){
	draw_sprite(spr_visitor,4,30,247);
} else if (visitorTypes[|1] == "Women"){
	draw_sprite(spr_visitor,5,30,247);
} else if (visitorTypes[|1] == "Rich"){
	draw_sprite(spr_visitor,8,30,247);
} else if (visitorTypes[|1] == "Barbecuer"){
	draw_sprite(spr_visitor,6,30,247);
} else if (visitorTypes[|1] == "conservative"){
	draw_sprite(spr_visitor,1,30,247);
} else if (visitorTypes[|1] == "Poor"){
	draw_sprite(spr_visitor,0,30,247);
} else if (visitorTypes[|1] == "Creep"){
	draw_sprite(spr_visitor,7,30,247);
}

 //other visitors
for(var i=2;i<=ds_list_size(visitorTypes);i++){
	if (visitorTypes[|i] == "Friends"){
		draw_sprite(spr_visitor,0,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Family"){
		draw_sprite(spr_visitor,1,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Tannist"){
		draw_sprite(spr_visitor,2,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Tourist"){
		draw_sprite(spr_visitor,3,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Men"){
		draw_sprite(spr_visitor,4,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Women"){
		draw_sprite(spr_visitor,5,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Rich"){
		draw_sprite(spr_visitor,8,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Barbecuer"){
		draw_sprite(spr_visitor,6,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "conservative"){
		draw_sprite(spr_visitor,1,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Poor"){
		draw_sprite(spr_visitor,0,30+((i-1)*55),250);
	} else if (visitorTypes[|i] == "Creep"){
		draw_sprite(spr_visitor,7,30+((i-1)*55),250);
	}
}
 #endregion
 
#region Highlight for new visitors
if (choosenVisitor == 1){
	draw_sprite(spr_highlight,0,30,202);
} else if (choosenVisitor == 2){
	draw_sprite(spr_highlight,0,30,247);
} else if (onChoice1){
	draw_normally(spr_highlight,30,202);
} else if (onChoice2){
	draw_normally(spr_highlight,30,247);
}
#endregion

#region infoBox and text
if (visitorChoosen || onChoice1 || onChoice2){
	draw_sprite(spr_Infobox,0,59,179);
}

draw_set_font(fnt_Default);
draw_set_color(c_black);

if (choosenVisitor == 1 || onChoice1){
	var infoboxType = ds_list_find_value(visitorTypes,0);
} else if (choosenVisitor == 2 || onChoice2){
	var infoboxType = ds_list_find_value(visitorTypes,1);
}

#region Text inside infobox
if (visitorChoosen || onChoice1 || onChoice2){
	draw_text_ext(65,183, infoboxType,-1,410);
	draw_set_font(fnt_info);
	if (infoboxType == "Rich"){
		draw_text(65,202,"Sitting prefrence:\nRich\nOcean\nPoor");
		draw_text(135,202,"\n+1\n+1\n-2");
		draw_text(155,202,"\nShops\nCreep");
		draw_text(235,202,"\n+1\n-2");
		draw_text(room_width-80,185,"Money x2");
	} else if (infoboxType == "Poor"){
		draw_text(65,202,"Sitting prefrence:\nOcean\nRich\nBarbecuer");
		draw_text(155,202,"\nShops");
		draw_text(135,202,"\n+2\n-1\n-1");
		draw_text(235,202,"\n-2");
		draw_text(room_width-80,185,"Money x0.75");
	} else if (infoboxType == "conservative"){
		draw_text(65,202,"Sitting prefrence:\nconservative\nBarbecuer\nTourist");
		draw_text(135,202,"\n+1\n+1\n-1");
		draw_text(155,202,"\nCreep");
		draw_text(235,202,"\n-3")
	} else if (infoboxType == "Barbecuer"){
		draw_text(65,202,"Sitting prefrence:\nBarbecuer\nOcean");
		draw_text(135,202,"\n+1\n-2");
		draw_text(room_width-80,185,"Money x1.25");
	} else if (infoboxType == "Creep"){
		draw_text(65,202,"Sitting prefrence:\nTannist\nWomen\nMen");
		draw_text(155,202,"\nBarbecuer\nconservative");
		draw_text(135,202,"\n+2\n+1\n+1");
		draw_text(235,202,"\n+1\n-3");
	} else if (infoboxType == "Friends"){
		draw_text(65,202,"Sitting prefrence:\nFriends");
		draw_text(135,202,"\n+1");
	} else if (infoboxType == "Family"){
		draw_text(65,202,"Sitting prefrence:\nFamily\nOcean\nShops");
		draw_text(135,202,"\n+1\n+1\n-1");
	} else if (infoboxType == "Tannist"){
		draw_text(65,202,"Sitting prefrence:\nTannist\nBarbecuer\nOcean");
		draw_text(135,202,"\n+1\n-1\n-1");
	} else if (infoboxType == "Tourist"){
		draw_text(65,202,"Sitting prefrence:\nFriends\nCreep\nconservative");
		draw_text(135,202,"\n+1\n-1\n-2");
		draw_text(155,202,"\nShops");
		draw_text(235,202,"\n+1");
		draw_text(room_width-80,185,"Money x1.25");
	} else if (infoboxType == "Men"){
		draw_text(65,202,"Sitting prefrence:\nMen\nWomen\nCreep");
		draw_text(135,202,"\n+1\n+1\n-1");
	} else if (infoboxType == "Women"){
		draw_text(65,202,"Sitting prefrence:\nWomen\nCreep");
		draw_text(135,202,"\n+1\n-3");
	}
}
#endregion
#region Time and Rating Calculations
var _time = string(timeOfDay-frac(timeOfDay));
if (frac(timeOfDay) >= 0.6){
	var time_ = "00";
	var _time = string(timeOfDay-frac(timeOfDay)+1);
} else {
	if (frac(timeOfDay) < 0.1){
		var time_ = "0"+string(floor(frac(timeOfDay)*100));
	} else {
		var time_ = string(floor(frac(timeOfDay)*100));
	}
}

var _Rating = floor(Rating);
var Rating_ = round(frac(Rating)*10);
#endregion

draw_set_valign(fa_top);
draw_set_font(fnt_Default);
draw_set_color(c_black);
draw_text(6,3,"Money: "+string(floor(Score)));
draw_text(room_width-109,3,"Rating: "+string(_Rating)+"."+string(Rating_)+"/5");
draw_set_halign(fa_center);
draw_text(room_width/2+1,3,"Time: "+_time+":"+time_+" "+am_pm);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(5,2,"Money: "+string(floor(Score)));
draw_text(room_width-110,2,"Rating: "+string(_Rating)+"."+string(Rating_)+"/5");
draw_set_halign(fa_center);
draw_text(room_width/2,2,"Time: "+_time+":"+time_+" "+am_pm);
draw_set_halign(fa_left);
#endregion