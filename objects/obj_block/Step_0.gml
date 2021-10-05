
switch (colour) {
	case block_types.empty: sprite_index = spr_block_empty; break;
	case block_types.blue: sprite_index = spr_block_blue; break;
	case block_types.green: sprite_index = spr_block_green; break;
	case block_types.pink: sprite_index = spr_block_pink; break;
	case block_types.purple: sprite_index = spr_block_purple; break;
	case block_types.red: sprite_index = spr_block_red; break;
	case block_types.yellow: sprite_index = spr_block_yellow; break;
}

// This is only here for safety
checked = false;