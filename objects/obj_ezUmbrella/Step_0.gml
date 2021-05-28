/// @desc
if (mouse_over()){
	mouseOver = true;
	if (obj_ezGameControl.visitorChoosen && !reserved){
		window_set_cursor(cr_drag);
		justMouseOver = true;
	}
} else if (justMouseOver){
	window_set_cursor(cr_default);
	justMouseOver = false;
	
} else mouseOver = false;

if (mouseOver && mouse_check_button_released(mb_left) && !reserved && obj_ezGameControl.visitorChoosen){
	reserved = true;
	ownerType = obj_ezGameControl.visitorType;
	window_set_cursor(cr_default);
	event_user(0);
	//obj_ezGameControl.visitorReady = false;
	obj_ezGameControl.visitorChoosen = false;
	with(obj_ezGameControl){
		if (choosenVisitor == 1){
			ds_list_delete(visitorTypes,0);
		} else if (choosenVisitor == 2){
			ds_list_delete(visitorTypes,1);
			overallSatisfaction -= 1;
		}
		choosenVisitor = 0;
		visitorType = "";
	}
	for(var i=0; i<=3; i++){
		if(instance_exists(umbId[|i])){
			with(umbId[|i]){
				satisfactionScore = 0;
				event_user(0);
			}
		}
	}
}