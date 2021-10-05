
var block = play_area[obj_cursor.x_index][obj_cursor.y_index];
var range = scr_scan_right(block, block.colour);
if (range > 1) {
	show_debug_message("Found right");
	scr_swap_right(block, range);
}
range = scr_scan_left(block, block.colour);
if (range > 1) {
	show_debug_message("Found left");
	scr_swap_left(block, range);
}
range = scr_scan_up(block, block.colour);
if (range > 1) {
	show_debug_message("Found up");
	scr_swap_up(block, range);
}
range = scr_scan_down(block, block.colour);
if (range > 1) {
	show_debug_message("Found down");
	scr_swap_down(block, range);
}
show_debug_message("before first uncheck");
scr_uncheck_neighbours(block)

var i = 0;
var j = 0;
repeat(global.width) {
	repeat(global.height) {
		block = play_area[i][j];

		if (block.colour != block_types.empty) {
			// TODO: Add wrappers to functions to uncheck themselves
			if (i == 4 and j == 2) {
				show_debug_message("this blue should have matches");
			}
			
			matches = scr_matching_neighbours(block);
			scr_uncheck_neighbours(block);
			
			// TODO: Raise this back to 3
			if (matches >= 2) {
				scr_pop_blocks(block);
				show_debug_message("got to here");
				scr_uncheck_neighbours(block);
			}
		}
		j++
	}
	j = 0;
	i++;
}