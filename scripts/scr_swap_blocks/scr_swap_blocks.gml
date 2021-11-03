// TODO: Simplify all these functions using neighbours
// Should blocks match as they move? No because the user needs to charge the original block
function scr_swap_right(block, range){
	var colour_far;
	var colour_near;
	repeat(range) {
		//if (block.y_index > 0 and 
		//  play_area[block.x_index + range][block.y_index].neighbour_top.colour ==
		//  play_area[block.x_index + range][block.y_index].colour) {
		//	colour_far = play_area[block.x_index + range][block.y_index].neighbour_top.colour;
		//	colour_near = play_area[block.x_index + range - 1][block.y_index].neighbour_top.colour;
		//	play_area[block.x_index + range][block.y_index].neighbour_top.colour = colour_near;
		//	play_area[block.x_index + range - 1][block.y_index].neighbour_top.colour = colour_far;
		//}
		//if (block.y_index < global.iheight and
		//  play_area[block.x_index + range][block.y_index].neighbour_bottom.colour ==
		//  play_area[block.x_index + range][block.y_index].colour) {
		//	colour_far = play_area[block.x_index + range][block.y_index].neighbour_bottom.colour;
		//	colour_near = play_area[block.x_index + range - 1][block.y_index].neighbour_bottom.colour;
		//	play_area[block.x_index + range][block.y_index].neighbour_bottom.colour = colour_near;
		//	play_area[block.x_index + range - 1][block.y_index].neighbour_bottom.colour = colour_far;
		//}
		// TODO: play_area should really be global
		colour_far = play_area[block.x_index + range][block.y_index].colour;
		colour_near = play_area[block.x_index + range - 1][block.y_index].colour;
		play_area[block.x_index + range][block.y_index].colour = colour_near;
		play_area[block.x_index + range - 1][block.y_index].colour = colour_far;
		range--;
	}
}

function scr_swap_left(block, range){
	var colour_far;
	var colour_near;
	repeat(range) {
		//if (block.y_index > 0 and 
		//  play_area[block.x_index - range][block.y_index].neighbour_top.colour ==
		//  play_area[block.x_index - range][block.y_index].colour) {
		//	colour_far = play_area[block.x_index - range][block.y_index].neighbour_top.colour;
		//	colour_near = play_area[block.x_index - range + 1][block.y_index].neighbour_top.colour;
		//	play_area[block.x_index - range][block.y_index].neighbour_top.colour = colour_near;
		//	play_area[block.x_index - range + 1][block.y_index].neighbour_top.colour = colour_far;
		//}
		//if (block.y_index < global.iheight and
		//  play_area[block.x_index - range][block.y_index].neighbour_bottom.colour ==
		//  play_area[block.x_index - range][block.y_index].colour) {
		//	colour_far = play_area[block.x_index - range][block.y_index].neighbour_bottom.colour;
		//	colour_near = play_area[block.x_index - range + 1][block.y_index].neighbour_bottom.colour;
		//	play_area[block.x_index - range][block.y_index].neighbour_bottom.colour = colour_near;
		//	play_area[block.x_index - range + 1][block.y_index].neighbour_bottom.colour = colour_far;
		//}
		colour_far = play_area[block.x_index - range][block.y_index].colour;
		colour_near = play_area[block.x_index - range + 1][block.y_index].colour;
		play_area[block.x_index - range][block.y_index].colour = colour_near;
		play_area[block.x_index - range + 1][block.y_index].colour = colour_far;
		range--;
	}
}

function scr_swap_down(block, range){
	var colour_far;
	var colour_near;
	repeat(range) {
		//if (block.x_index > 0 and
		//  play_area[block.x_index][block.y_index + range].neighbour_left.colour ==
		//  play_area[block.x_index][block.y_index + range].colour) {
		//	colour_far = play_area[block.x_index][block.y_index + range].neighbour_left.colour;
		//	colour_near = play_area[block.x_index][block.y_index + range - 1].neighbour_left.colour;
		//	play_area[block.x_index][block.y_index + range].neighbour_left.colour = colour_near;
		//	play_area[block.x_index][block.y_index + range - 1].neighbour_left.colour = colour_far;
		//}
		//if (block.x_index < global.iwidth and
		//  play_area[block.x_index][block.y_index + range].neighbour_right.colour ==
		//  play_area[block.x_index][block.y_index + range].colour) {
		//	colour_far = play_area[block.x_index][block.y_index + range].neighbour_right.colour;
		//	colour_near = play_area[block.x_index][block.y_index + range - 1].neighbour_right.colour;
		//	play_area[block.x_index][block.y_index + range].neighbour_right.colour = colour_near;
		//	play_area[block.x_index][block.y_index + range - 1].neighbour_right.colour = colour_far;
		//}
		colour_far = play_area[block.x_index][block.y_index + range].colour;
		colour_near = play_area[block.x_index][block.y_index + range - 1].colour;
		play_area[block.x_index][block.y_index + range].colour = colour_near;
		play_area[block.x_index][block.y_index + range - 1].colour = colour_far;
		range--;
	}
}

function scr_swap_up(block, range){
	var colour_far;
	var colour_near;
	repeat(range) {
		//if (block.x_index > 0 and
		//  play_area[block.x_index][block.y_index - range].neighbour_left.colour ==
		//  play_area[block.x_index][block.y_index - range].colour) {
		//	colour_far = play_area[block.x_index][block.y_index - range].neighbour_left.colour;
		//	colour_near = play_area[block.x_index][block.y_index - range + 1].neighbour_left.colour;
		//	play_area[block.x_index][block.y_index - range].neighbour_left.colour = colour_near;
		//	play_area[block.x_index][block.y_index - range + 1].neighbour_left.colour = colour_far;
		//}
		//if (block.x_index < global.iwidth and
		//  play_area[block.x_index][block.y_index - range].neighbour_right.colour ==
		//  play_area[block.x_index][block.y_index - range].colour) {
		//	colour_far = play_area[block.x_index][block.y_index - range].neighbour_right.colour;
		//	colour_near = play_area[block.x_index][block.y_index - range + 1].neighbour_right.colour;
		//	play_area[block.x_index][block.y_index - range].neighbour_right.colour = colour_near;
		//	play_area[block.x_index][block.y_index - range + 1].neighbour_right.colour = colour_far;
		//}
		colour_far = play_area[block.x_index][block.y_index - range].colour;
		colour_near = play_area[block.x_index][block.y_index - range + 1].colour;
		play_area[block.x_index][block.y_index - range].colour = colour_near;
		play_area[block.x_index][block.y_index - range + 1].colour = colour_far;
		range--;
	}
}