/// @desc Save Ids of nearby Umbrellas
umbId = ds_list_create();
umbId[|0] = instance_position(x,y-55,obj_TutorialUmbrella);
umbId[|1] = instance_position(x,y+55,obj_TutorialUmbrella);
umbId[|2] = instance_position(x+100,y,obj_TutorialUmbrella);
umbId[|3] = instance_position(x-100,y,obj_TutorialUmbrella);

if (umbId[|0] == noone){
	topPlaceOffset = 10;
} else {
	topPlaceOffset = 0;
}
//umbId[|0] = instance_position(x+45, y-33,obj_TutorialUmbrella);
//umbId[|1] = instance_position(x+45, y+77,obj_TutorialUmbrella);
//umbId[|2] = instance_position(x+145,y+22,obj_TutorialUmbrella);
//umbId[|3] = instance_position(x-55, y+22,obj_TutorialUmbrella);