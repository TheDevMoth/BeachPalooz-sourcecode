/// @desc
if (ownerType == "Tourist"){
	TypeModifier = 1.25;
} else if (ownerType == "Barbecuer"){
	TypeModifier = 1.25;
} else if (ownerType == "Poor"){
	TypeModifier = 0.75;
} else if (ownerType == "Rich"){
	TypeModifier = 2;
}

with(obj_ezGameControl){
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
		Score += satisfactionModifier*(Rating/3)*other.TypeModifier*(current_time-other.startTime)/1000;
	}
	//Score += (Rating/4)*other.TypeModifier*(current_time-other.startTime)/1000;
	visitorNO += 1;
	overallSatisfaction += other.satisfactionScore;
}
reserved = false;
ownerType = "";
ownerModifier = "";
satisfactionScore = 0;
timer = 0;
startTime = 0;
TypeModifier = 1;
