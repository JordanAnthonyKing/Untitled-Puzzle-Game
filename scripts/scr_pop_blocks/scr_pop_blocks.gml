function scr_pop_blocks(block, colour){
	block.colour = block_types.empty;
	// var other_block = {};
	
	if (block.x_index > 0) {
		other_block = block.neighbour_left;
		if (colour == other_block.colour) {
			scr_pop_blocks(other_block, colour);
		}
	}
	if (block.x_index < global.iwidth) {
		other_block = block.neighbour_right;
		if (colour == other_block.colour) {
			scr_pop_blocks(other_block, colour);
		}
	}
	if (block.y_index > 0) {
		other_block = block.neighbour_top;
		if (colour == other_block.colour) {
			scr_pop_blocks(other_block, colour);
		}
	}
	if (block.y_index < global.iheight) {
		other_block = block.neighbour_bottom;
		if (colour == other_block.colour) {
			scr_pop_blocks(other_block, colour);
		}
	}
}