function scr_scan_right(block, colour, count = 0){
	if (block.x_index < global.iwidth) {
		var other_block = block.neighbour_right;
		if (colour == other_block.colour) {
			return count + 1;
		}
		return scr_scan_right(other_block, colour, count + 1);
	}
	return 0;
}

function scr_scan_left(block, colour, count = 0){
	if (block.x_index > 0) {
		var other_block = block.neighbour_left;
		if (colour == other_block.colour) {
			return count + 1;
		}
		return scr_scan_left(other_block, colour, count + 1);
	}
	return 0;
}

function scr_scan_up(block, colour, count = 0){
	if (block.y_index > 0) {
		var other_block = block.neighbour_top;
		if (colour == other_block.colour) {
			return count + 1;
		}
		return scr_scan_up(other_block, colour, count + 1);
	}
	return 0;
}

function scr_scan_down(block, colour, count = 0){
	if (block.y_index < global.iheight) {
		var other_block = block.neighbour_bottom;
		if (colour == other_block.colour) {
			return count + 1;
		}
		return scr_scan_down(other_block, colour, count + 1);
	}
	return 0;
}