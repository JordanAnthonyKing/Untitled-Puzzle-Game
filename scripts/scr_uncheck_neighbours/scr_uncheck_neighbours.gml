function scr_uncheck_neighbours(block){
	block.checked = false;
	// left
	if (block.x_index > 0) {
		if (block.neighbour_left.checked) {
			if (block.colour == block.neighbour_left.colour) {
				scr_uncheck_neighbours(block.neighbour_left);
			}
		}
	}
	// right
	if (block.x_index < global.iwidth) {
		if (block.neighbour_right.checked) {
			if (block.colour == block.neighbour_right.colour) {
				scr_uncheck_neighbours(block.neighbour_right);
			}
		}
	}
	// top
	if (block.y_index > 0) {
		if (block.neighbour_top.checked) {
			if (block.colour == block.neighbour_top.colour) {
				scr_uncheck_neighbours(block.neighbour_top);
			}
		}
	}
	// bottom
	if (block.y_index < global.iheight) {
		if (block.neighbour_bottom.checked) {
			if (block.colour == block.neighbour_bottom.colour) {
				scr_uncheck_neighbours(block.neighbour_bottom);
			}
		}
	}
}