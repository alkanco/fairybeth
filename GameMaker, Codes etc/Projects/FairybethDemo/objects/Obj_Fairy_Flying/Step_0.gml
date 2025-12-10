part_system_position(partSys, x, y);
if (path_position >= 0.46 && !global.flipped) {
    image_xscale *= -1; // Flip vertically
	partSys=part_system_destroy(partSys)
	partSys = part_system_create(Glitzer_Flipped);
    global.flipped = true;
}