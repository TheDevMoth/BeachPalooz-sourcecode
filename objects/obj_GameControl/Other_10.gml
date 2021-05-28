/// @desc Find visitor types and modifiers

while (ds_list_size(visitorTypes) < numberOfVisitors){
	if (Rating >= 4.5){
		var visitorTypeTemp = choose("Friends","Men","Family","Women", "Tourist", "Tannist");
		var visitorModifierTemp = choose("Rich", "conservative", "Barbecuing", "Creepy");
	} else if (Rating >= 4){
		var visitorTypeTemp = choose("Friends","Men","Family","Women", "Tourist", "Tannist");
		var visitorModifierTemp = choose("Rich", "Poor", "conservative", "Barbecuing", "Creepy");
	} else if (Rating >= 3.5){
		var visitorTypeTemp = choose("Friends","Men","Family","Women", "Tourist", "Tannist");
		var visitorModifierTemp = choose("Poor", "conservative", "Barbecuing", "Creepy");
	} else if (Rating >= 3){
		var visitorTypeTemp = choose("Friends","Men","Family","Women", "Tannist");
		var visitorModifierTemp = choose("Poor", "conservative", "Barbecuing", "Creepy");
	} else {
		var visitorTypeTemp = choose("Friends","Men","Family","Women",);
		var visitorModifierTemp = choose("Poor", "conservative", "Barbecuing");
	}
	
	//var visitorTypeTemp = choose("Friends","Men","Family","Women", "Tourist", "Tannist");
	//var visitorModifierTemp = choose("Rich", "Poor", "conservative", "Barbecuing", "Creepy");
	
	if (visitorTypeTemp == "Tourist" && (visitorModifierTemp == "conservative" || visitorModifierTemp == "Poor")){
		visitorModifierTemp = choose("Rich", "Barbecuing", "Creepy");
	} else if ((visitorTypeTemp == "Friends" || visitorTypeTemp == "Family") && (visitorModifierTemp == "Creepy")){
		visitorModifierTemp = choose("Rich", "Poor", "conservative", "Barbecuing");
	} else if (visitorTypeTemp == "Tannist" && (visitorModifierTemp == "Barbecuing" || visitorModifierTemp == "Poor")){
		visitorModifierTemp = choose("Rich", "conservative", "Creepy");
	}
	ds_list_add(visitorModifiers,visitorModifierTemp);
	ds_list_add(visitorTypes,visitorTypeTemp);
	//visitorReady = true;
}
