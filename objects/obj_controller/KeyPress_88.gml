x_index = obj_cursor.x_index;
y_index = obj_cursor.y_index;

block = play_area[x_index][y_index];

// TODO Rewrite to use neighbours
// right
range = scr_scan_right(block, block.colour);
if (range > 1) {
	show_debug_message("Found right");
}
range = scr_scan_left(block, block.colour);
if (range > 1) {
	// Do shift
	show_debug_message("Found left");
}
range = scr_scan_up(block, block.colour);
if (range > 1) {
	// Do shift
	show_debug_message("Found up");
}
range = scr_scan_down(block, block.colour);
if (range > 1) {
	// Do shift
	show_debug_message("Found down");
}

// evaluate board
i = 0;
j = 0;
// repeat(global.iwidth) {
// 	repeat(global.iheight) {
//		var block = play_area[i][j];
//		var block2 = play_area[1][j];
//		var block3 = play_area[i][1];
//		if (block.colour != block_types.empty) {
//			matches = scr_matching_neighbours(block);
//			if (matches >= 3) {
//				scr_pop_blocks(block, block.colour);
//			}
//		}
//		j++
// 	}
// 	j = 0;
// 	i++;
// }