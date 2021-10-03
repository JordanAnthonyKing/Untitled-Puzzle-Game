enum block_types {
	empty,
	blue,
	green,
	pink,
	purple,
	red,
	yellow	
}

play_area = array_create(6, array_create(11));

i = 0;
j = 0;
repeat(5) {
	repeat(10) {
		obj = instance_create_layer(
			((room_width / 2) - 48) +  (i * 16), 
			((room_height / 2) - 64) + (j * 16), 
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
