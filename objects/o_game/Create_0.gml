global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

//Font Creation
var _font_string = "ABCDEabcdeFGHIJfghijKLMNOklmnoPQRSTpqrstUVWXYuvwxyZ0123z!?%/45678:9'.-";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

//Camera Settings
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);

//Ethan
global.player_start_position = i_baron_to_overworld;
global.text_box = false;

//Battle Stuff
global.party = array_create(5,noone);
global.party[0]= o_battle_cecil;
global.party[1]= o_battle_rosa;

//FINISH THE TEXT THING TOMORROW