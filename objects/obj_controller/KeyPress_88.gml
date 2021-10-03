/// @description Insert description here
// You can write your code in this editor

x_index = obj_cursor.x_index;
y_index = obj_cursor.y_index;

block = play_area[x_index][y_index];

found = false;
i = x_index + 2;

// right
if (x_index < global.iwidth - 2) {
	while(i <= global.iwidth and !found) {
		found = play_area[i][y_index].colour == block.colour;
		if (found) {
			repeat(i - x_index) {
				play_area[i][y_index].colour = play_area[i - 1][y_index].colour;
				i--;
			}
		}
		i++;
	}
}

// left
if (x_index < global.iwidth - 2) {
	found = false;
	i = x_index - 2;
	
	while(i >= 0 and !found) {
		found = play_area[i][y_index].colour == block.colour;
		if (found) {
			repeat(x_index - i) {
				play_area[i][y_index].colour = play_area[i + 1][y_index].colour;
				i++;
			}
		}
		i--;
	}
}

// down
if (y_index < global.iheight - 2) {
	found = false;
	i = y_index + 2;
	
	while(i <= global.iheight and !found) {
		found = play_area[x_index][i].colour == block.colour;
		if (found) {
			repeat(i - y_index) {
				play_area[x_index][i].colour = play_area[x_index][i - 1].colour;
				i--;
			}
		}
		i++;
	}
}

// left
if (x_index < global.iheight - 2) {
	found = false;
	i = y_index - 2;
	
	while(i >= 0 and !found) {
		found = play_area[x_index][i].colour == block.colour;
		if (found) {
			repeat(y_index - i) {
				play_area[x_index][i].colour = play_area[x_index][i + 1].colour;
				i++;
			}
		}
		i--;
	}
}