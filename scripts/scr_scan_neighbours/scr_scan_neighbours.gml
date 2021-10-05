function scr_scan_right(block, colour, count = 0){
	if (block.x_index < global.iwidth) {
		if (colour == block.neighbour_right.colour) {
			return count + 1;
		}
		return scr_scan_right(block.neighbour_right, colour, count + 1);
	}
	return 0;
}

function scr_scan_left(block, colour, count = 0){
	if (block.x_index > 0) {
		if (colour == block.neighbour_left.colour) {
			return count + 1;
		}
		return scr_scan_left(block.neighbour_left, colour, count + 1);
	}
	return 0;
}

function scr_scan_up(block, colour, count = 0){
	if (block.y_index > 0) {
		if (colour == block.neighbour_top.colour) {
			return count + 1;
		}
		return scr_scan_up(block.neighbour_top, colour, count + 1);
	}
	return 0;
}

function scr_scan_down(block, colour, count = 0){	
	if (block.y_index < global.iheight) {
		if (colour == block.neighbour_bottom.colour) {
			return count + 1;
		}
		return scr_scan_down(block.neighbour_bottom, colour, count + 1);
	}
	return 0;
}