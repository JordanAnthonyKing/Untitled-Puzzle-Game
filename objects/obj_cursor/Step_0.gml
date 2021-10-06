
// TODO: Move this out of step function (maybe)
x = (room_width / 2) - ((global.width / 2) * 16) + (x_index * 16); 
y = (room_height / 2) - ((global.height / 2) * 16) + (y_index * 16);

switch (axis) {
	case cursor_axis.horizontal: sprite_index = spr_cursor_horizontal; break;
	case cursor_axis.vertical: sprite_index = spr_cursor_vertical; break;
}