draw_self()
if(path_position==1){
	draw_set_font(Font1)
	draw_set_halign(fa_center)
	draw_text_ext_colour(660, 90, global.bubbleText, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
	draw_set_font(Font2)
	draw_text_ext_colour(660, 130, global.searchedLetter, 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
}

