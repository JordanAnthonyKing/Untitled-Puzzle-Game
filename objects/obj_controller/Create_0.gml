// TODO: Move this to block create?
enum block_types {
	empty,
	blue,
	green,
	pink,
	purple,
	red,
	yellow
}

enum cardinals {
	right,
	left,
	up,
	down
}

global.width = 10;
global.iwidth = global.width - 1;
global.height = 16;
global.iheight = global.height -1;

play_area = array_create(global.width, array_create(global.height));

// Fill play area
i = 0;
j = 0;
repeat(global.width) {
	repeat(global.height) {
		obj = instance_create_layer(
			((room_width / 2) - ((global.width / 2) * 16)) +  (i * 16), 
			((room_height / 2) - ((global.height / 2) * 16)) + (j * 16), 
			"Instances",
			obj_block);
			
		obj.x_index = i;
		obj.y_index = j;
			
		play_area[i][j] = obj;
			
		j++;
	}
	
	i++;
	j = 0;
}

// link and colour blocks
i = 0;
j = 0;
repeat(global.width) {
	repeat(global.height) {
		obj = play_area[i][j];
		colours = array_create(0);
		
		if (i > 0) {
			obj.neighbour_left = play_area[i - 1][j];
			if (obj.neighbour_left.colour != block_types.empty) {
				array_push(colours, obj.neighbour_left.colour);
			}
		}
		if (i < global.iwidth) {
			obj.neighbour_right = play_area[i + 1][j];
			if (obj.neighbour_right.colour != block_types.empty) {
				array_push(colours, obj.neighbour_right.colour);
			}
		}
		if (j > 0) {
			obj.neighbour_top = play_area[i][j - 1];
			if (obj.neighbour_top.colour != block_types.empty) {
				array_push(colours, obj.neighbour_top.colour);
			}
		}
		if (j < global.iheight) {
			obj.neighbour_bottom = play_area[i][j + 1];
			if (obj.neighbour_bottom.colour != block_types.empty) {
				array_push(colours, obj.neighbour_bottom.colour);
			}
		}
		
		valid_colours = array_create(0);
		colour_idx = 1; // Colours are ints
		repeat(6) {
			taken = false;
			taken_idx = 0;
			repeat(array_length(colours)) {
				if (colours[taken_idx] == colour_idx) {
					taken = true;
				}
				taken_idx++;
			}
			if (!taken) {
				array_push(valid_colours, colour_idx);
			}
			colour_idx++;
		}
		obj.colour = valid_colours[irandom_range(0, array_length(valid_colours) - 1)];
		
		j++;
	}
	
	i++;
	j = 0;
}
