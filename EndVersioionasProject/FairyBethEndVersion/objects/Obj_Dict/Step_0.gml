if(global.showDictionary){
	instance_deactivate_layer("Instances_1")
	instance_deactivate_object(Obj_Fairy_Flying)
	var mx = mouse_x;
    var my = mouse_y;

    // Left Arrow
    if (mx > 56 && mx < 184 && my > 526 && my < 654) {
        if (mouse_check_button_pressed(mb_left)) { // ← Added this
            if (global.dictPage > 0) {
                global.dictPage -= 1;
            }
        }
    }

    // Right Arrow
    if (mx > 1166 && mx < 1294 && my > 526 && my < 654) {
        if (mouse_check_button_pressed(mb_left)) { // ← Added this
            show_debug_message("right arrow has been clicked")
            if ((global.dictPage + 1) * items_per_page < array_length(global.foundItems)) {
                global.dictPage += 1;
            }
        }
    }
}
else{
	instance_activate_layer("Instances_1")
	instance_activate_object(Obj_Fairy_Flying)
}
