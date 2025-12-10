part_system_position(global.partSys, x, y);
if (path_position==0) {
	audio_play_sound(lookAtThisMess,10,false)
	audio_play_sound(mainMusic,0.7,true)
}
if (path_position >= 0.46 && !global.flipped) {
    image_xscale *= -1; // Flip vertically
	global.partSys=part_system_destroy(global.partSys)
	global.partSys = part_system_create(Glitzer_Flipped);
	audio_play_sound(CanYouHelpMe,0.9,false)
    global.flipped = true;
	
}
if(global.isFalseAnswer&&!global.listEmpty){
	sprite_index=Fairy_Flying_Shocked
	audio_play_sound(TryAgain,10,false)
	global.bubbleText="Naww that is the wrong item :( The first letter is:"
	draw_set_halign(fa_center)
	draw_set_font(Font2)
	draw_text_ext_colour(660, 90, global.bubbleText, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	draw_text_ext_colour(660, 130,global.searchedLetter, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	global.isFalseAnswer=false
}
if(global.isRightAnswer&&!global.listEmpty){
	sprite_index=Fairy_Flying_Happy
	audio_play_sound(goodJob,10,false)
	global.bubbleText="Good job! The first letter of the next item is:"
	draw_set_halign(fa_center)
	draw_set_font(Font2)
	draw_text_ext_colour(660, 90, global.bubbleText, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	draw_text_ext_colour(660, 130,global.searchedLetter, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	global.isRightAnswer=false
}
