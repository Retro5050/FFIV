/// @description Insert description here
// You can write your code in this editor
if(!battle_obj.show_menu){
	if(state_ = party_states.recover){ x+=20;
		state_ = party_states.rest;}
	
	if(stamina_<start_stamina_){
		stamina_++;}
	if (state_ = party_states.active){
			if(instance_exists(target_)){
				attack(self,target_);
				x-=20;
				state_ = party_states.recover;}}}
