// TODO: Add wrapper to +1 to total to include initial block
function scr_matching_neighbours(block){
	block.checked = true;
	var total = 0;
	
	// left
	if (block.x_index > 0) {
		if (block.colour == block.neighbour_left.colour and 
			!block.neighbour_left.checked) {
			total++;
			total += scr_matching_neighbours(block.neighbour_left);
		}
	}
	// right
	if (block.x_index < global.iwidth) {
		if (block.colour == block.neighbour_right.colour and 
			!block.neighbour_right.checked) {
			total++;
			total += scr_matching_neighbours(block.neighbour_right);
		}
	}
	// top
	if (block.y_index > 0) {
		if (block.colour == block.neighbour_top.colour and 
			!block.neighbour_top.checked) {
			total++;
			total += scr_matching_neighbours(block.neighbour_top);
		}
	}
	// bottom
	if (block.y_index < global.iheight) {
		if (block.colour == block.neighbour_bottom.colour and 
			!block.neighbour_bottom.checked) {
			total++;
			total += scr_matching_neighbours(block.neighbour_bottom);
		}
	}
	
	return total;
}