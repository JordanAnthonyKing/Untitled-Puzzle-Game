enum block_types {
	empty,
	blue,
	green,
	pink,
	purple,
	red,
	yellow	
}

global.width = 10;
global.iwidth = global.width - 1;
global.height = 16;
global.iheight = global.height -1;

play_area = array_create(global.width, array_create(global.height));

i = 0;
j = 0;
repeat(global.width - 1) {
	repeat(global.height - 1) {
		obj = instance_create_layer(
			((room_width / 2) - ((global.width / 2) * 16)) +  (i * 16), 
			((room_height / 2) - ((global.height / 2) * 16)) + (j * 16), 
			"Instances",
			obj_block);
			
		play_area[i][j] = obj;
		obj.colour = choose(
			block_types.blue,
			block_types.green,
			block_types.pink,
			block_types.purple,
			block_types.red,
			block_types.yellow);
			
		j++;
	}
	
	i++;
	j = 0;
}
