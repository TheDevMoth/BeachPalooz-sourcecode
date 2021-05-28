/// @desc pick a visitor and their modifier
#region Calculating the Rating
if (visitorNO == 0){
	var satisfactionToVistorNO = 0;
} else {
	var satisfactionToVistorNO = overallSatisfaction/visitorNO;
}
Rating = 3.0 + satisfactionToVistorNO/2.0;

Rating = (round(Rating*10))/10;
if (Rating > 5){
	Rating = 5.0;
}
#endregion

#region Calculating number of waiting visitors
if (Rating >= 4.5){
	numberOfVisitors = 10;
} else if (Rating >= 4){
	numberOfVisitors = 8;
} else if (Rating >= 3.5){
	numberOfVisitors = 6;
} else if (Rating >= 3){
	numberOfVisitors = 4;
} else if (Rating >= 2.5){
	numberOfVisitors = 3;
} else if (Rating >= 2){
	numberOfVisitors = 2;
} else {
	numberOfVisitors = 1;
}
#endregion

event_user(0);

//ds_list_replace(visitorModifiers,0,"Barbecuing");
//ds_list_replace(visitorTypes,0,"Tannist");

#region Control
if (mouse_x <= 60 && mouse_y >= 180 && mouse_y <= 220){
	window_set_cursor(cr_drag);
	onChoice1 = true;
	onChoice2 = false;
	if (mouse_check_button_released(mb_left)){
		if (!visitorChoosen || (choosenVisitor = 2 && visitorChoosen)){
			visitorChoosen = true;
			choosenVisitor = 1;
			visitorType = ds_list_find_value(visitorTypes,0);
			visitorModifier = ds_list_find_value(visitorModifiers,0);
			obj_Rooms.clickedOnVisitor = true;
		} else {
			visitorChoosen = false;
			choosenVisitor = 0;
			visitorType = "";
			visitorModifier = "";
		}
	} else if (mouse_check_button_released(mb_middle)){
		//event_user(0);
		ds_list_delete(visitorModifiers,0);
		ds_list_delete(visitorTypes,0);
		visitorChoosen = false;
		choosenVisitor = 0;
		//Rating -= 5;
		overallSatisfaction -= 3;
		visitorNO += 1;
	}
} else if (mouse_x <= 60 && mouse_y >= 230 && ds_list_find_value(visitorModifiers,1) != undefined){
	window_set_cursor(cr_drag);
	onChoice2 = true;
	onChoice1 = false;
	if (mouse_check_button_released(mb_left)){
		if (!visitorChoosen || (choosenVisitor = 1 && visitorChoosen)){
			visitorChoosen = true;
			choosenVisitor = 2;
			visitorType = ds_list_find_value(visitorTypes,1);
			visitorModifier = ds_list_find_value(visitorModifiers,1);
			obj_Rooms.clickedOnVisitor = true;
		} else {
			visitorChoosen = false;
			choosenVisitor = 0;
			visitorType = "";
			visitorModifier = "";
		}
	} else if (mouse_check_button_released(mb_middle)){
		//event_user(1);
		ds_list_delete(visitorModifiers,1);
		ds_list_delete(visitorTypes,1);
		visitorChoosen = false;
		choosenVisitor = 0;
		//Rating -= 5;
		overallSatisfaction -= 3;
		visitorNO += 1;
	}
} else if (onChoice1 || onChoice2){
	window_set_cursor(cr_default);
	onChoice1 = false;
	onChoice2 = false;
}

if (visitorChoosen && mouse_check_button_released(mb_right)){
	visitorChoosen = false;
	choosenVisitor = 0;
}
#endregion

#region Time
timeOfDay = hourOfDay + (current_time-startingTime)*(10/4)/100000;
if (frac(timeOfDay) >= 0.6 && frac(timeOfDay) < 0.7){
	hourOfDay += 0.4;
}
if (timeOfDay >= 13){
	hourOfDay -= 12;
	am_pm = "PM";
}
timeOfDay = hourOfDay + (current_time-startingTime)*(10/4)/100000;
if (timeOfDay >= 4 && timeOfDay < 5){
	//with(obj_Umbrella){
	//	if (reserved){
	//		event_user(1);
	//	}
	//}
	//obj_Rooms.Score = round(Score)
	//obj_Rooms.preRoom = "Hard";
	room_goto(rm_Menu);
}
#endregion

event_user(0);