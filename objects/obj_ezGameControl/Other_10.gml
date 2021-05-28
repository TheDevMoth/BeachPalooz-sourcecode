/// @desc Find visitor types and modifiers

while (ds_list_size(visitorTypes) < numberOfVisitors){
	if (Rating >= 4){
		var visitorTypeTemp = choose("Friends", "Men", "Family", "Women", "Tourist", "Tannist", "Barbecuer", "Rich", "conservative", "Creep");
	} else if (Rating >= 3.5){
		var visitorTypeTemp = choose("Friends", "Men", "Family", "Women", "Tourist", "Tannist", "Barbecuer", "Poor", "conservative", "Creep");
	} else if (Rating >= 3){
		var visitorTypeTemp = choose("Friends", "Men", "Family", "Women", "Tannist", "Poor", "conservative", "Creep", "Barbecuer");
	} else {
		var visitorTypeTemp = choose("Friends", "Men", "Family", "Women", "Poor", "conservative", "Creep");
	}
	
	//var visitorTypeTemp = choose("Friends","Men","Family","Women", "Tourist", "Tannist");
	//var visitorModifierTemp = choose("Rich", "Poor", "conservative", "Barbecuing", "Creepy");
	ds_list_add(visitorTypes,visitorTypeTemp);
	//visitorReady = true;
}
