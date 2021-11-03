function scr_pop_blocks(block){
	block.checked = true;
	
	if (block.x_index > 0) {
		if (block.colour == block.neighbour_left.colour and 
			!block.neighbour_left.checked) {
			scr_pop_blocks(block.neighbour_left);
		}
	}
	if (block.x_index < global.iwidth) {
		if (block.colour == block.neighbour_right.colour and 
			!block.neighbour_right.checked) {
			scr_pop_blocks(block.neighbour_right);
		}
	}
	if (block.y_index > 0) {
		if (block.colour == block.neighbour_top.colour and 
			!block.neighbour_top.checked) {
			scr_pop_blocks(block.neighbour_top);
		}
	}
	if (block.y_index < global.iheight) {
		if (block.colour == block.neighbour_bottom.colour and 
			!block.neighbour_bottom.checked) {
			scr_pop_blocks(block.neighbour_bottom);
		}
	}
	
	block.colour = block_types.empty;
}

// DEBUG
function scr_highlight_blocks(block){
	block.checked = true;
	
	if (block.x_index > 0) {
		if (block.colour == block.neighbour_left.colour and 
			!block.neighbour_left.checked) {
			scr_highlight_blocks(block.neighbour_left);
		}
	}
	if (block.x_index < global.iwidth) {
		if (block.colour == block.neighbour_right.colour and 
			!block.neighbour_right.checked) {
			scr_highlight_blocks(block.neighbour_right);
		}
	}
	if (block.y_index > 0) {
		if (block.colour == block.neighbour_top.colour and 
			!block.neighbour_top.checked) {
			scr_highlight_blocks(block.neighbour_top);
		}
	}
	if (block.y_index < global.iheight) {
		if (block.colour == block.neighbour_bottom.colour and 
			!block.neighbour_bottom.checked) {
			scr_highlight_blocks(block.neighbour_bottom);
		}
	}
	
	block.colour = block_types.white;
}