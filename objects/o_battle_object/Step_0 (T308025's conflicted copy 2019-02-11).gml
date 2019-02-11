/// @description Insert description here
// You can write your code in this editor
//for(var i = 0;i<ds_list_size(global.party); i++){
//	with instance_find(ds_list_find_value(global.party,i),0) if(stamina_ == start_stamina_){
//	current_character = self;
//	battle_pause = true;}}
show_menu = not ds_list_empty(ready_names)
show_action = not (ds_list_empty(waiting_actions) or show_menu);
pause = show_menu or show_action;
if(show_action){
var a = ds_list_find_value(waiting_actions,0);
if(a.frames == 220) a.character.image_speed = 1;
else if(a.frames == 110){
a.character.stamina_ = 0;
}
else if(a.frames == 0){
a.character.image_speed = 0;
instance_destroy(ds_list_delete(waiting_actions,0));
if(ds_list_size(waiting_actions) == 0)
	show_action = false;}
a.frames--;
}

else if(show_menu){
if(keyboard_check_pressed(vk_up)&&pointer_.position>0)pointer_.position--;
if(keyboard_check_pressed(vk_down)&&pointer_.position<ds_list_size(menu_options)-1)pointer_.position++;
if(keyboard_check_pressed(vk_space)){
	var a = pointer_.position;
	if(stage == menu_stages.character){
		show_message(ds_list_find_value(ready_names,a));
		ip_action.character = ds_list_find_value(ready_characters,a);
		stage = menu_stages.move;
		menu_options = move_menu;}
	else if(stage == menu_stages.move){
		if(a == 2){
		ip_action.action_type = action_types.block;
		ds_list_add(waiting_actions,ip_action);
		//var block_effect = instance_create_layer(0,0,layer,o_block_effect);
		//with current_character{block_effect.time = start_stamina_;
		//stats[stat_type.defense]*=1.5;
		//ds_list_add(status_effects,block_effect)
		stamina_ = 0;
		stage = menu_stages.character;
		}
		else{
			move_type = ds_list_find_value(move_menu,a);
			stage = menu_stages.target;
			menu_options = enemy_names;
			ip_action.action_type = action_types.hit;}}
	else if(stage == menu_stages.target){
	ip_action.character.targ = ds_list_find_value(enemy_instances, a);
	
	//var d = attack(current_character,target_entity);
	//ip_action.character.stamina_ = 0;
	stage = menu_stages.character;
	menu_options = ready_names;
	//action_string = (current_character.name +" attacks "+ target_entity.name+" for "+ string(d) + "damage");
	ds_list_add(waiting_actions,ip_action);
	var s = ds_list_find_index(ready_characters,ip_action.character);
	ds_list_delete(ready_characters,s);
	ds_list_delete(ready_names,s);
	ip_action = instance_create_layer(0,0,layer, o_battle_action);
	}
	pointer_.position = 0;}

if(keyboard_check_pressed(vk_tab)){
	if(stage == menu_stages.move){
		ds_list_add(ready_characters, ip_action.character);
		ds_list_add(ready_names, ip_action.character.name);
		ip_action.character = noone;
		stage = menu_stages.character;
		menu_options = ready_names;}
		
	else if(stage == menu_stages.target){
		ip_action.action_type = 0;
		stage = menu_stages.move;
		menu_options = move_menu;}
		pointer_.position = 0;}
}
