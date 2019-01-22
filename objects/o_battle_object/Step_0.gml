/// @description Insert description here
// You can write your code in this editor
//for(var i = 0;i<ds_list_size(global.party); i++){
//	with instance_find(ds_list_find_value(global.party,i),0) if(stamina_ == start_stamina_){
//	current_character = self;
//	battle_pause = true;}}

if(keyboard_check_pressed(vk_up)&&pointer_.position>0)pointer_.position--;
if(keyboard_check_pressed(vk_down)&&pointer_.position<array_length_1d(menu_options)-1)pointer_.position++;
if(keyboard_check_pressed(vk_enter)){
	var a = pointer_.position
	if(stage = menu_stages.character){
		current_character = character_instances[a];
		stage = menu_stages.move;
		menu_options = move_menu;}
	else if(stage = menu_stages.move){
		if(a == 2){
		//blocking code
		stage = menu_stages.character;}
		else{
			move_type = move_menu[a];
			stage = menu_stages.target;
			menu_options = enemy_names;}
		}
	else{
	target_entity = enemies[a]
	current_character.target_ = target_entity;
	current_character.state_= party_states.active;
	stage = menu_stages.character;
	menu_options = character_names;
	}
	pointer_.position = 0;
}
for (var i = 0; i < instance_number(o_battle_enemy); i += 1){
   enemy_instances[i] = instance_find(o_battle_enemy,i);
   enemy_names[i] = enemy_instances[i].name;}
for (var i = 0; i < instance_number(o_battle_party); i += 1){
   character_instances[i] = instance_find(o_battle_party,i);
   character_names[i] = character_instances[i].name;}
