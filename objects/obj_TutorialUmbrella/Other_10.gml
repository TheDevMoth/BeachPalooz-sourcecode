/// @desc Satisfaction Check

#region Owner Type satisfaction
if (ownerType == "Friends"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Friends"){
				satisfactionScore++;
			}
		}
	}
} else if (ownerType == "Men"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Men" || umbId[|i].ownerType == "Women"){
				satisfactionScore++;
			} else if (umbId[|i].ownerModifier == "Creepy" && ownerModifier != "Creepy"){
				satisfactionScore--;
			}
		}
	}
} else if (ownerType == "Family"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Family"){
				satisfactionScore++;
			}
		}
	}
	if (umbId[|0] == noone){
		satisfactionScore++;
	}
	if ((umbId[|2] == noone || umbId[|3] == noone) && ownerModifier != "Rich"){
		satisfactionScore--;
	}
} else if (ownerType == "Women"){
	for(var i=0; i<=3; i++){
			if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Women"/* || umbId[|i].ownerType == "Men"*/){
				satisfactionScore++;
			//} else if (umbId[|i].ownerModifier == "conservative" && ownerModifier != "conservative"){
			//	satisfactionScore--;
			} else if (umbId[|i].ownerModifier == "Creepy" && ownerModifier != "Creepy"){
				satisfactionScore -= 3;
			}
		}
	}
} else if (ownerType == "Tourist"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Friends"){
				satisfactionScore++;
			}
			if (umbId[|i].ownerModifier == "Creepy" && ownerModifier != "Creepy"){
				satisfactionScore--;
			} else if (umbId[|i].ownerModifier == "conservative"){
				satisfactionScore -= 2;
			}
		}
	}
	if (umbId[|2] == noone || umbId[|3] == noone){
		satisfactionScore++;
	}
} else if (ownerType == "Tannist"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Tannist"){
				satisfactionScore++;
			} else if (umbId[|i].ownerModifier == "Barbecuing"){
				satisfactionScore--;
			}
		}
	}
	if (umbId[|0] == noone){
		satisfactionScore -= 3;
	}
}
#endregion

#region Owner Modifier Satisfaction
if (ownerModifier == "Rich"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerModifier == "Rich"){
				satisfactionScore++;
			} else if ((umbId[|i].ownerModifier == "Creepy" && ownerType != "Tannist") || umbId[|i].ownerModifier == "Poor"){
				satisfactionScore -= 2;
			}
		}
	}
	if (umbId[|0] == noone){
		satisfactionScore++;
	}
	if (umbId[|2] == noone || umbId[|3] == noone){
		satisfactionScore++;
	}
} else if (ownerModifier == "Poor"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerModifier == "Rich" || umbId[|i].ownerModifier == "Barbecuing"){
				satisfactionScore--;
			}
		}
	}
	if (umbId[|0] == noone){
		satisfactionScore += 2;
	}
	if (umbId[|2] == noone || umbId[|3] == noone){
		satisfactionScore -= 3;
	}
} else if (ownerModifier == "conservative"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerModifier == "conservative" || umbId[|i].ownerModifier == "Barbecuing"){
				satisfactionScore++;
			} else if (umbId[|i].ownerType == "Tourist"){
				satisfactionScore--;
			} else if (umbId[|i].ownerModifier == "Creepy" && ownerType != "Tannist"){
				satisfactionScore -= 3;
			}
		}
	}
} else if (ownerModifier == "Barbecuing"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerModifier == "Barbecuing"){
				satisfactionScore++;
			} else if (umbId[|i].ownerType == "Family"){
				//satisfactionScore--;
			}
		}
	}
	if (umbId[|0] == noone){
		satisfactionScore -= 2;
	}
} else if (ownerModifier == "Creepy"){
	for(var i=0; i<=3; i++){
		if( instance_exists(umbId[|i])){
			if (umbId[|i].ownerType == "Tannist"){
				satisfactionScore += 2;
			} else if (umbId[|i].ownerType == "Women"){
				satisfactionScore++;
			} else if (umbId[|i].ownerType == "Men"){
				satisfactionScore++;
			} else if (umbId[|i].ownerModifier == "Barbecuing"){
				satisfactionScore++;
			} else if (umbId[|i].ownerModifier == "conservative"){
				satisfactionScore -= 3;
			}
		}
	}
}
#endregion

#region Determine Timer
if (timer == 0){ 
	if (ownerType == "Tannist"){
		timer = room_speed*30*(3/2);
		if (satisfactionScore < 0){
			timer = timer+(satisfactionScore*10*room_speed);
			if (timer < 20*room_speed){
				timer = 20*room_speed;
			}
		}
	} else if (ownerType == "Tourist"){
		timer = room_speed*30*(3/4);
	} else if (ownerType == "Men" || ownerType == "Women" || ownerType == "Family" || ownerType == "Friends"){
		timer = room_speed*30;
	}
	if (ownerModifier == "Barbecuing"){
		timer = timer*(5/4);
	} else if (ownerModifier == "Poor"){
		timer = timer*(3/4);
	} else if (ownerModifier == "Creepy"){
		timer = timer+(room_speed*satisfactionScore*5);
		if (timer < 10*room_speed){
			timer = 10*room_speed;
		}
	}
	alarm[1] = timer;
	startTime = current_time;
} else {
	var currentAlarmTime = alarm_get(1);
	var alarmCompletion = currentAlarmTime/timer;
	//if (ownerType =="Tannist"){
	//	timer = room_speed*30*(3/2);
	//	if (satisfactionScore < 0){
	//		timer = timer+(satisfactionScore*10*room_speed);
	//		if (timer < 20*room_speed){
	//			timer = 20*room_speed;
	//		}
	//	}
	//}
	if (ownerModifier == "Creepy"){
		timer = room_speed*30+(room_speed*satisfactionScore*5);
			if (timer < 10*room_speed){
				timer = 10*room_speed;
			}
	}
	alarm[1] = timer*alarmCompletion;
}

#endregion
