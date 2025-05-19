if (global.showDictionary) {
	
	draw_sprite(spr_openbook, 0, 50, 50);
	
	var items_per_page = 8; 
    var page = global.dictPage;
    var total_items = array_length(global.foundItems);
    var start_idx = page * items_per_page;

	var x_left = 180;
    var x_right = 500;
    var y_start = 150;
    var y_spacing = 60;
        
    // Title
    draw_set_color(c_black);
	draw_set_font(Font3)
    draw_text(120, 120, "Found Items:");

    // List found items
    for (var i = 0; i < items_per_page; i++) {
       var idx = start_idx + i;
       if (idx >= total_items) break;

       var item = global.foundItems[idx];
       var column = (i < items_per_page / 2) ? 0 : 1;
       var row = i mod (items_per_page / 2);

       var x1 = (column == 0) ? x_left : x_right;
       var y1 = y_start + row * y_spacing;

       draw_sprite(real(item.icon), 0, x1, y1);
       draw_text(x1 + 64, y1 + 16, item.name);
    }
	// Draw arrows
    if (page > 0) {
        draw_sprite(ArrowLeft, 0, 120, 450);
    }
    if ((page + 1) * items_per_page < total_items) {
        draw_sprite(ArrowRight, 0, 680, 450);
    }
}
