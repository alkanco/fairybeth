function addToFoundItems(name, icon_sprite) {
    for (var i = 0; i < array_length(global.foundItems); i++) {
        if (global.foundItems[i].name == name) return; // already exists
    }

    var item = {
        name: name,
        icon: icon_sprite
    };
    array_push(global.foundItems, item);
}