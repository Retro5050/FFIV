/// @description Insert description here
// You can write your code in this editor
if(!battle_obj.show_menu){
	if(state_ == party_states.a_recover){ x+=20;
		state_ = party_states.rest;}
	if(stamina_<start_stamina_){
		stamina_++;}
	else if(state_ == party_states.b_recover){
		def_*=.75;
		state = party_states.rest;}
	if (state_ == party_states.active){
			if(instance_exists(target_)){
				attack(self,target_);
				x-=20;
				state_ = party_states.a_recover;}}
	else if(state_ == party_states.block)
		{def_*=1.5;
		state_ = party_states.b_recover;}}
