/// @description Insert description here
// You can write your code in this editor

//create party character
characters = clean_party();
var p_len=array_length_1d(characters);
character_instances = ds_list_create();
var party_x_displacement = 150;
var party_y_displacement = 100/(p_len+1);

for(var i=0;i<p_len;i++){
ds_list_add(character_instances, instance_create_layer(party_x_displacement,party_y_displacement*(i+1),layer,characters[i]));
}

//create enemies
enemies[0] = o_birdie;
var e_len=array_length_1d(enemies);
var enemy_x_displacement = 30;
var enemy_y_displacement = 100/(e_len+1);
enemy_instances = ds_list_create();
enemy_names = ds_list_create();

for(var i=0;i<e_len;i++){
ds_list_add(enemy_instances, instance_create_layer(enemy_x_displacement,enemy_y_displacement*(i+1),layer,enemies[i]));
ds_list_add(enemy_names, ds_list_find_value(enemy_instances,i).name);
}



//create menu stuff
move_menu = ds_list_create();
ds_list_add(move_menu,"Attack");
ds_list_add(move_menu,"Magic");
ds_list_add(move_menu,"Block");
ds_list_add(move_menu,"Item");
enum menu_stages{
	character,
	move,
	target}

//create lists for battle
ready_characters = ds_list_create();
ds_list_copy(ready_characters,character_instances);
ready_names = ds_list_create();
for(var i = 0; i<p_len;i++) ds_list_add(ready_names,ds_list_find_value(ready_characters,i).name);

//menu drawing
menu_displacement = 80;
pointer_ = instance_create_depth(x+5,y+5,-1,pointer);
pointer_.position = 0;
pointer_.x = menu_displacement-3;

//prep for first
stage = menu_stages.character;
menu_options = ready_names;
battle_pause = false;
show_menu = true;
show_action = false;
action_string = "";
pause = true;
waiting_actions = ds_list_create();
ip_action = instance_create_layer(0,0,layer, o_battle_action);