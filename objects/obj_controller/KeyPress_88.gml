
var block = play_area[obj_cursor.x_index][obj_cursor.y_index];

// move blocks
var range;
if (obj_cursor.axis == cursor_axis.horizontal) {
	range = scr_scan_right(block, block.colour);
	if (range > 1) {
		scr_swap_right(block, range);
	}
	range = scr_scan_left(block, block.colour);
	if (range > 1) {
		scr_swap_left(block, range);
	}
} else {
	range = scr_scan_up(block, block.colour);
	if (range > 1) {
		scr_swap_up(block, range);
	}
	range = scr_scan_down(block, block.colour);
	if (range > 1) {
		scr_swap_down(block, range);
	}
}

var function evaluate_board(){
	var popped = false;
	var i = 0;
	var j = 0;
	repeat(global.width) {
		repeat(global.height) {
			block = play_area[i][j];

			if (block.colour != block_types.empty) {
				// TODO: Add wrappers to functions to uncheck themselves
				matches = scr_matching_neighbours(block);
				scr_uncheck_neighbours(block);
			
				// TODO: Raise this back to 3
				if (matches >= 2) {
					popped = true;
					scr_pop_blocks(block);
					scr_uncheck_neighbours(block);
				}
			}
			j++
		}
		j = 0;
		i++;
	}
	
	return popped;
}

// pop blocks
while (evaluate_board()) {
	// gravity
	var i = global.iwidth;
	var j = global.iheight - 1;
	repeat(global.width) {
		repeat(global.height - 1) {
			block = play_area[i][j];
			while (block.colour != block_types.empty and
			  block.neighbour_bottom and 
			  block.neighbour_bottom.colour == block_types.empty) {
				block.neighbour_bottom.colour = block.colour;
				block.colour = block_types.empty;
				block = block.neighbour_bottom;
			}
			j--;
		}
		j = global.iheight - 1;
		i--;
	}
}









