/// @description Insert description here
// You can write your code in this editor
if(!battle_obj.show_menu){
	stamina_++;
	if(stamina_ == start_stamina_){
		var targ = instance_find(o_battle_party,irandom(instance_number(o_battle_party)-1))
		if(targ != noone){
			attack(self,targ);
			stamina_ = 0;
			event_user(0);
			alarm[0] = 15;}}}