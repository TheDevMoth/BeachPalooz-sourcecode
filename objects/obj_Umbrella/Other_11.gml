/// @desc
if (ownerType == "Tourist"){
	TypeModifier = 1.25;
}
if (ownerModifier == "Barbecuing"){
	ModifierModifier = 1.25;
} else if (ownerModifier == "Poor"){
	ModifierModifier = 0.75;
} else if (ownerModifier == "Rich"){
	ModifierModifier = 2;
}

with(obj_GameControl){
	if (other.satisfactionScore > 2){ 
		var satisfactionModifier = other.satisfactionScore/2;
	} else if (other.satisfactionScore >= -1){
		var satisfactionModifier = 1;
	} else if (other.satisfactionScore > -3){
		var satisfactionModifier = abs(other.satisfactionScore)^(-1);
	} else {
		var satisfactionModifier = 0;
	}
	if (Rating >1.5){
		Score += satisfactionModifier*(Rating/3)*other.ModifierModifier*other.TypeModifier*(current_time-other.startTime)/1000;
	}
	visitorNO += 1;
	//Rating += other.satisfactionScore;
	overallSatisfaction += other.satisfactionScore;
}
reserved = false;
ownerType = "";
ownerModifier = "";
satisfactionScore = 0;
timer = 0;
startTime = 0;
ModifierModifier = 1;
TypeModifier = 1;
