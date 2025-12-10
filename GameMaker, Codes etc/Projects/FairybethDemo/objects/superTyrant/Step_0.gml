if(global.listEmpty){
	//draw_text_ext_colour(400, 100, "Yayyy you did it!", 1, 1500, c_red, c_black, c_red, c_black, 1);
	show_debug_message("yay Ethan u did it u saved the village, where the residents are evil.")
}

if(!global.askedUser&&!global.listEmpty){
	global.chosen_index = irandom(array_length(global.listRoom)-1)
	global.searchedWord= global.listRoom[global.chosen_index]
	global.searchedLetter=string_copy(global.searchedWord,1,1)
	global.letterInSpeech=global.searchedLetter
	global.bubbleText="The first letter of the item you are searching for is: "
	global.askedUser=true
}