global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

global.player_start_position = i_baron_to_overworld;
global.text_box = false;
global.party = ds_list_create();
ds_list_add(global.party, o_battle_cecil);