/// @desc
if (mouse_over()){
	mouseOver = true;
	if (obj_GameControl.visitorChoosen && !reserved){
		window_set_cursor(cr_drag);
		justMouseOver = true;
	}
} else if (justMouseOver){
	window_set_cursor(cr_default);
	justMouseOver = false;
	
} else mouseOver = false;

if (mouseOver && mouse_check_button_released(mb_left) && !reserved && obj_GameControl.visitorChoosen){
	reserved = true;
	ownerType = obj_GameControl.visitorType;
	ownerModifier = obj_GameControl.visitorModifier;
	window_set_cursor(cr_default);
	event_user(0);
	//obj_GameControl.visitorReady = false;
	obj_GameControl.visitorChoosen = false;
	with(obj_GameControl){
		if (choosenVisitor == 1){
			//event_user(0);
			ds_list_delete(visitorModifiers,0);
			ds_list_delete(visitorTypes,0);
		} else if (choosenVisitor == 2){
			//event_user(1);
			ds_list_delete(visitorModifiers,1);
			ds_list_delete(visitorTypes,1);
			//Rating -= 1;
			overallSatisfaction -= 1;
		}
		choosenVisitor = 0;
		visitorType = "";
		visitorModifier = "";
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