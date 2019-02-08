if instance_exists(global.player_start_position) {
	if instance_exists(o_player) {
		o_player.persistent = false;
		
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		o_player.layer = layer_get_id("Instances");
	}
	else 
	{
		var _start_x = global.player_start_position.x;	
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Instances", o_player);
	}
	global.player_start_position = noone;
	
	if room = r_overworld {
		audio_stop_all();
		audio_play_sound(a_overworld, 10, true);
	}
	
	if room = r_baron or room = r_baron_inn or room = r_baron_item_shop or room = r_baron_serpent_road or room = r_baron_training_room_1 or room = r_baron_training_room_2 or room = r_baron_weapon_shop {
		audio_stop_all();
		audio_play_sound(a_town, 10, true);
	}
}