/// @description Insert description here
// You can write your code in this editor
if((!battle_obj.pause) and stamina_<start_stamina_){stamina_++;
	if(stamina_ == start_stamina_){
		ds_list_add(battle_obj.ready_characters, self);
		ds_list_add(battle_obj.ready_names, self.name);}}