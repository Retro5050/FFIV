/// @description Insert description here
// You can write your code in this editor
if(!battle_obj.show_menu){
	if(state_ == party_states.a_recover){ x+=20;
		state_ = party_states.rest;}
	if(stamina_<start_stamina_){
		stamina_++;}
	if (state_ == party_states.active){
			if(instance_exists(target_)){
				attack(self,target_);
				x-=20;
				state_ = party_states.a_recover;}}
	else if(state_ == party_states.block)
		{var block_effect = instance_create_layer(0,0,layer,o_block_effect);
		block_effect.time = start_stamina_;
		stats[stat_type.defense]*=1.5;
		ds_list_add(status_effects,block_effect);
		show_message(string(ds_list_size(status_effects)));
		state_ = party_states.rest;}}