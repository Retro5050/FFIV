/// @description Insert description here
// You can write your code in this editor
if(!battle_obj.pause){
	stamina_++;
	if(stamina_ == start_stamina_){
		targ = instance_find(o_battle_party,irandom(instance_number(o_battle_party)-1))
		if(targ != noone){
			var act = instance_create_layer(0,0,layer,o_enemy_action);
			act.character = self;
			act.action_type = action_types.hit;
			action_string_setter(act);
			ds_list_add(battle_obj.waiting_actions,act);
			//attack(self,targ);
			//stamina_ = 0;
			//event_user(0);
			//alarm[0] = 15;
			}}}