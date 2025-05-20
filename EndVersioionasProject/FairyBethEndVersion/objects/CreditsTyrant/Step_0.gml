if (mouse_check_button_pressed(mb_left)) {
    var mx = mouse_x;
    var my = mouse_y;

	//for play button
    if (point_in_rectangle(mx, my, 485,635,850,685)) {
        room_goto(rm_menu);
    }
}