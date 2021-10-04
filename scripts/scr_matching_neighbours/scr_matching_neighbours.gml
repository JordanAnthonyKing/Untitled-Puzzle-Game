function scr_matching_neighbours(block){
	block.checked = true;
	
	show_debug_message(string(block.x_index) + "." + string(block.y_index));
	
	var total = 0;
	var other_block = {};
	
	// left
	if (block.x_index > 0) {
		other_block = block.neighbour_left;
		show_debug_message(string(block.colour) + " " + string(other_block.colour));
		if (block.colour == other_block.colour and !other_block.checked) {
			total++;
			total += scr_matching_neighbours(other_block);
		}
	}
	// right
	if (block.x_index < global.iwidth) {
		other_block = block.neighbour_right;
		show_debug_message(string(block.colour) + " " + string(other_block.colour));
		if (block.colour == other_block.colour and !other_block.checked) {
			total++;
			total += scr_matching_neighbours(other_block);
		}
	}
	// top
	if (block.y_index > 0) {
		other_block = block.neighbour_top;
		show_debug_message(string(block.colour) + " " + string(other_block.colour));
		if (block.colour == other_block.colour and !other_block.checked) {
			total++;
			total += scr_matching_neighbours(other_block);
		}
	}
	// bottom
	if (block.y_index < global.iheight) {
		other_block = block.neighbour_bottom;
		show_debug_message(string(block.colour) + " " + string(other_block.colour));
		if (block.colour == other_block.colour and !other_block.checked) {
			total++;
			total += scr_matching_neighbours(other_block);
		}
	}
	
	show_debug_message(string(total));
	
	return total;
}