if (global.showDictionary) {
	draw_sprite(spr_openbook, 0, 50, 50);
	 
    var page = global.dictPage;
    var total_items = array_length(global.foundItems);
    var start_idx = page * items_per_page;
	
	array_sort(global.foundItems, function(a, b) {
		if (a.name < b.name) return -1;
		else if (a.name > b.name) return 1;
		else return 0;
	});


	var x_left = 150;
    var x_right = 800;
    var y_start = 200;
    var y_spacing = 60;
        
    // Title
    draw_set_color(c_black);
	draw_set_font(Font3)
    draw_text(175, 150, "Found Items:");
	
    // List found items
    for (var i = 0; i < items_per_page; i++) {
       var idx = start_idx + i;
       if (idx >= total_items) break;
	   
       var item = global.foundItems[idx];
       var column = (i < items_per_page / 2) ? 0 : 1;
       var row = i mod (items_per_page / 2);

       var x1 = (column == 0) ? x_left : x_right;
       var y1 = y_start + row * y_spacing;
	   
	   var dictSprSize=64
	   var sprWidth=sprite_get_width(item.icon)
	   var sprHeight=sprite_get_height(item.icon)
	   var scaleX= dictSprSize/sprWidth
	   var scaleY= dictSprSize/sprHeight

       draw_sprite_ext(item.icon, 0, x1, y1,scaleX,scaleY,0,c_white,1);
	   
	   draw_set_font(Font4)
	   draw_set_halign(fa_left)
       draw_text(x1+dictSprSize+ 16, y1-14, item.name);
    }
	// Draw arrows
    if (page > 0) {
        draw_sprite(ArrowLeft, 0, 120, 590);
    }
    if ((page + 1) * items_per_page < total_items) {
        draw_sprite(ArrowRight, 0, 1230, 590);
    }
}
