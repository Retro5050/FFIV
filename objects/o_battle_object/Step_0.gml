/// @description Insert description here
// You can write your code in this editor
//for(var i = 0;i<ds_list_size(global.party); i++){
//	with instance_find(ds_list_find_value(global.party,i),0) if(stamina_ == start_stamina_){
//	current_character = self;
//	battle_pause = true;}}

if(show_action){
	var s = ds_list_find_value(waiting_actions,0);
	
	if(s.action_type == action_types.hit){
		with(s.character)event_user(4);
		if(s.steps == s.total_steps)s.character.image_speed = 1;
		else if(s.steps == floor(s.total_steps/2))with(s.character)event_user(1);
		else if(s.steps ==0)s.character.image_speed = 0;}
		
	else if(s.action_type == action_types.block){
		if(s.steps == s.total_steps)s.character.image_blend = c_gray;
		else if(s.steps == floor(s.total_steps/2))with(s.character)event_user(2);
		else if(s.steps ==0)s.character.image_blend = -1;
		}
		
	else if(s.action_type == action_types.spell){
		if(s.steps == s.total_steps)s.character.image_blend = c_aqua;
		else if(s.steps == floor(s.total_steps/2))with(s.character)event_user(0);
		else if(s.steps ==0)s.character.image_blend = -1;
		}
		
	if(s.steps == 0){
		ds_list_delete(waiting_actions,0);
		if(ds_list_empty(enemy_instances) or ds_list_empty(character_instances))instance_destroy();}
		
		s.steps--;}
		
		
if(show_menu){
if(keyboard_check_pressed(vk_up)&&pointer_.position>0)pointer_.position--;
if(keyboard_check_pressed(vk_down)&&pointer_.position<ds_list_size(menu_options)-1)pointer_.position++;
if(keyboard_check_pressed(vk_space)){
	var a = pointer_.position;
	if(stage == menu_stages.character){
		ip_action.character = ds_list_find_value(ready_characters, a);
		stage = menu_stages.move;
		menu_options = move_menu;}
		
	else if(stage == menu_stages.move){
		if(a==0 or (a == 1 and ip_action.character.spell_has_target)){
			if(a == 0) ip_action.action_type = action_types.hit;
			else if(a == 1) ip_action.action_type = action_types.spell;
			stage = menu_stages.target;
			menu_options = enemy_names;}
		else {
			if(a == 2)ip_action.action_type = action_types.block;
			else if(a == 1 and !ip_action.character.spell_has_target)
				ip_action.action_type = action_types.spell;
			
			action_string_setter(ip_action);
			ds_list_add(waiting_actions,ip_action);
			var c =ds_list_find_index(ready_characters,ip_action.character);
			ds_list_delete(ready_characters,c);
			ds_list_delete(ready_names,c);
			ip_action = instance_create_layer(0,0,layer,o_battle_action);
			stage = menu_stages.character;
			menu_options = ready_names;}}
			
	else if(stage == menu_stages.target){
	ip_action.character.targ = ds_list_find_value(enemy_instances, a);
	action_string_setter(ip_action);
		var c =ds_list_find_index(ready_characters,ip_action.character);
		ds_list_delete(ready_characters,c);
		ds_list_delete(ready_names,c);
		ds_list_add(waiting_actions,ip_action);
		ip_action = instance_create_layer(0,0,layer,o_battle_action);
	stage = menu_stages.character;
	menu_options = ready_names;
	}
	pointer_.position = 0;}

if(keyboard_check_pressed(vk_tab)){
	if(stage == menu_stages.move){
		current_character = noone;
		stage = menu_stages.character;
		menu_options = rcn;}
		
	else if(stage == menu_stages.target){
		move_type = 0;
		stage = menu_stages.move;
		menu_options = move_menu;}
		pointer_.position = 0;}
}
show_menu = not ds_list_empty(ready_characters);
show_action = not (ds_list_empty(waiting_actions) or show_menu);
pause = show_menu or show_action;
