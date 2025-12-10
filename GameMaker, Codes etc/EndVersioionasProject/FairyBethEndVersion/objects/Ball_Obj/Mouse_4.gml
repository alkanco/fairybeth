if (global.searchedLetter==letter){
	//show_debug_message("YOU DID IT!!")
	array_delete(global.listRoom, global.chosen_index, 1)
	addToFoundItems(item, Ball);
	if(array_length(global.listRoom)==0){
	global.listEmpty=true
	}
	global.askedUser=false
	global.isRightAnswer=true
	instance_destroy()
}
else{
	global.isFalseAnswer=true
	//show_debug_message("YOU DID UR UTMOST ETHAN :(")
	//show_debug_message(global.searchedLetter)
}