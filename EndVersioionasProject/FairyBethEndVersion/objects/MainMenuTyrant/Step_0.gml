if (fadeAlpha > 0) {
    fadeAlpha -= 0.02;
    if (fadeAlpha < 0) fadeAlpha = 0;
}

if (mouse_check_button_pressed(mb_left)) {
    var mx = mouse_x;
    var my = mouse_y;

	//for play button
    if (point_in_rectangle(mx, my, 440,355,830,400)) {
        room_goto(rm_game);
    }
	
	//for credits
    if (point_in_rectangle(mx, my, 440,405,830,450)) {
        room_goto(rm_credits);
    }

    //for exit button
    if (point_in_rectangle(mx, my, 440,455,830,500)) {
        game_end();
    }
}