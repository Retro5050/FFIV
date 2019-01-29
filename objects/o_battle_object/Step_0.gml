/// @description Insert description here
// You can write your code in this editor
//for(var i = 0;i<ds_list_size(global.party); i++){
//	with instance_find(ds_list_find_value(global.party,i),0) if(stamina_ == start_stamina_){
//	current_character = self;
//	battle_pause = true;}}
if(array_length_1d(enemy_instances) != instance_number(o_battle_enemy)){
	var ka = instance_number(o_battle_enemy);
	if(ka == 0) alarm[0] = 10;
	enemy_instances = array_create(ka);
	enemy_names = array_create(ka);
	for (var i = 0; i < ka; i++){
		enemy_instances[i] = instance_find(o_battle_enemy,i);
		enemy_names[i] = enemy_instances[i].name;}}

if(array_length_1d(character_instances) != instance_number(o_battle_party)){
	var ka = instance_number(o_battle_party);
	character_instances = array_create(ka);
	character_names = array_create(ka);
	for (var i = 0; i < instance_number(o_battle_party); i++){
		var store = instance_find(o_battle_party,i);
		character_instances[i] = store;
		character_names[i] = store.name;}}
		
var s=0;
for(var i = 0; i<array_length_1d(character_instances); i++){
	with(character_instances[i])if(self.stamina_ == self.start_stamina_)s++;}
ready_characters = array_create(s);
rcn = array_create(s);
show_menu = s != 0;
s = 0;
for(var i = 0; i<array_length_1d(character_instances); i++){
	var ka = character_instances[i];
	if(ka.stamina_ == ka.start_stamina_){
	rcn[s] = ka.name;
	ready_characters[s] = ka;
	s++;}
}
if (stage == menu_stages.character) menu_options = rcn;
if(show_menu){
if(keyboard_check_pressed(vk_up)&&pointer_.position>0)pointer_.position--;
if(keyboard_check_pressed(vk_down)&&pointer_.position<array_length_1d(menu_options)-1)pointer_.position++;
if(keyboard_check_pressed(vk_enter)){
	var a = pointer_.position;
	if(stage = menu_stages.character){
		current_character = ready_characters[a];
		stage = menu_stages.move;
		menu_options = move_menu;}
	else if(stage = menu_stages.move){
		if(a == 2){
		current_character.state_ = party_states.block;
		current_character.stamina_ = 0;
		stage = menu_stages.character;}
		else{
			move_type = move_menu[a];
			stage = menu_stages.target;
			menu_options = enemy_names;}
		}
	else if(stage = menu_stages.target){
	target_entity = enemy_instances[a];
	current_character.target_ = target_entity;
	current_character.state_= party_states.active;
	current_character.stamina_ = 0;
	stage = menu_stages.character;
	menu_options = rcn;
	}
	pointer_.position = 0;
}
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