/// @description Insert description here
// You can write your code in this editor
if(stamina_<start_stamina_){
	stamina_++;}
else{
if (state_ = party_states.active){
		if(target_!=noone){
			attack(self,target_);
			stamina_ = 0;
			x-=20;
			state_ = party_states.recover;}}
else if(state_ = party_states.recover){ x+=20;
	state_ = party_states.rest;}}