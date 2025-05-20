draw_self()
if(path_position==1){
	show_debug_message("path is closed")
	draw_set_font(Font1)
	draw_text_ext_colour(400, 100, global.bubbleText, 1, 1500, c_red, c_black, c_red, c_black, 1);
}
if(global.listEmpty){
	global.bubbleText="Yayyy You did it!"
	draw_text_ext_colour(500, 100, global.bubbleText, 1, 1500, c_red, c_black, c_red, c_black, 1);
}
