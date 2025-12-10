if(global.listEmpty){
	//draw_text_ext_colour(400, 100, "Yayyy you did it!", 1, 1500, c_red, c_black, c_red, c_black, 1);
	//show_debug_message("yay Ethan u did it u saved the village, where the residents are evil.")
}

if(global.firstSentence&&!global.askedUser&&!global.listEmpty){
	global.chosen_index = irandom(array_length(global.listRoom)-1)
	global.searchedWord= global.listRoom[global.chosen_index]
	global.searchedLetter=string_copy(global.searchedWord,1,1)
	global.letterInSpeech=global.searchedLetter
	//global.bubbleText="The first letter of the item you are searching for is: "
	global.askedUser=true
	global.firstSentence=false
}
if(!global.firstSentence&&!global.askedUser&&!global.listEmpty){
	global.chosen_index = irandom(array_length(global.listRoom)-1)
	global.searchedWord= global.listRoom[global.chosen_index]
	global.searchedLetter=string_copy(global.searchedWord,1,1)
	global.letterInSpeech=global.searchedLetter
	//global.bubbleText="The first letter of the item you are searching for is: "
	global.askedUser=true
}
if(global.listEmpty&&global.isGameFinished){
	global.bubbleText="Yayyy You did it!"
	global.searchedLetter="Great Job!"
	draw_set_halign(fa_center)
	draw_set_font(Font2)
	draw_text_ext_colour(660, 90, global.bubbleText, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	draw_text_ext_colour(660, 130,global.searchedLetter, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	
	if (!hasPlayedFinishSound) {
        audio_play_sound(seeYouInTheNextRoom, 10, false);
        hasPlayedFinishSound = true;
    }
	
	timer += delta_time / 1000; // delta_time is in microseconds
	
	if (timer >= message_duration) {
		global.partSys=part_system_destroy(global.partSys)
		room_goto(rm_menu);
	}
}
