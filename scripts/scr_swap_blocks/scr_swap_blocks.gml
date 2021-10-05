function scr_swap_right(block, range){
	repeat(range) {
		var colour_far = play_area[block.x_index + range][block.y_index].colour;
		var colour_near = play_area[block.x_index + range - 1][block.y_index].colour;
		play_area[block.x_index + range][block.y_index].colour = colour_near;
		play_area[block.x_index + range - 1][block.y_index].colour = colour_far;
		range--;
	}
}

function scr_swap_left(block, range){
	repeat(range) {
		var colour_far = play_area[block.x_index - range][block.y_index].colour;
		var colour_near = play_area[block.x_index - range + 1][block.y_index].colour;
		play_area[block.x_index - range][block.y_index].colour = colour_near;
		play_area[block.x_index - range + 1][block.y_index].colour = colour_far;
		range--;
	}
}

function scr_swap_down(block, range){
	repeat(range) {
		var colour_far = play_area[block.x_index][block.y_index + range].colour;
		var colour_near = play_area[block.x_index][block.y_index + range - 1].colour;
		play_area[block.x_index][block.y_index + range].colour = colour_near;
		play_area[block.x_index][block.y_index + range - 1].colour = colour_far;
		range--;
	}
}

function scr_swap_up(block, range){
	repeat(range) {
		var colour_far = play_area[block.x_index][block.y_index - range].colour;
		var colour_near = play_area[block.x_index][block.y_index - range + 1].colour;
		play_area[block.x_index][block.y_index - range].colour = colour_near;
		play_area[block.x_index][block.y_index - range + 1].colour = colour_far;
		range--;
	}
}