if instance_exists(global.player_start_position) {show_message("the start position exists");
	if instance_exists(o_player) {
		show_message("the player object exists at the start of the room");
		o_player.persistent = false;
		
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		o_player.layer = layer_get_id("Instances");
	}
	else 
	{
		show_message("the play SHOULD be created now");
		var _start_x = global.player_start_position.x;	
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Instances", o_player);
	}
	global.player_start_position = noone;
}
show_message("the start position does not exist");