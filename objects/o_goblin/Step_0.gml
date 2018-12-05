/// @description Insert description here
// You can write your code in this editor
if(state == "fight"){
	attack(atk_,acc_,crit_,taisuru);
	alarm[0]=attack_time;
	state = "rest";}
if(hp_<=0)instance_destroy();