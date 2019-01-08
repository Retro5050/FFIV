global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

global.player_start_position = i_baron_to_overworld;
global.text_box = false;
global.party = array_create(5, [o_battle_cecil]);