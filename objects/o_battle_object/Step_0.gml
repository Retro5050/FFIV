/// @description Insert description here
// You can write your code in this editor
//for(var i = 0;i<ds_list_size(global.party); i++){
//	with instance_find(ds_list_find_value(global.party,i),0) if(stamina_ == start_stamina_){
//	current_character = self;
//	battle_pause = true;}}
if(menu_stages[stage] = "character")menu_options = character_names;
else if(menu_stages[stage] = "move")menu_options = move_menu;
else if(menu_stages[stage] = "target")menu_options = enemy_names;
if(keyboard_check_pressed(vk_up)&&pointer_.position>0)pointer_.position--;
if(keyboard_check_pressed(vk_down)&&pointer_.position<array_length_1d(menu_options)-1)pointer_.position++;
if(keyboard_check_pressed(vk_enter)){
	if(menu_options[pointer_.position] == "Attack"){
	}}