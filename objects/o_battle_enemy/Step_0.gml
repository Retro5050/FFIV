/// @description Insert description here
// You can write your code in this editor
stamina_++;
if(stamina_ == start_stamina_){
	attack(atk_,acc_,crit_,taisuru);
	stamina_ = 0;
	event_user(0);
	alarm[0] = 15;}