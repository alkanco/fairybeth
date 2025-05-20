//draw_set_font(Font5)
//draw_text_ext_colour(320, 208, "FairyBeth!", 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_button(460,355,830,400, !mouse_check_button(mb_left))
draw_text_ext_colour(645, 362.5, "Play the game!", 0, 1500, c_purple, c_red, c_navy, c_blue, 1);
draw_button(460,405,830,450, !mouse_check_button(mb_left))
draw_text_ext_colour(645, 412.5, "Credits", 1, 1500, c_purple, c_red, c_navy, c_blue, 1);
draw_button(460,455,830,500, !mouse_check_button(mb_left))
draw_text_ext_colour(645, 462.5, "Exit", 1, 1500, c_purple, c_red, c_navy, c_blue, 1);