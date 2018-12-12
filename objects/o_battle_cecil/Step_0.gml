/// @description Insert description here
// You can write your code in this editor
if(stamina_<start_stamina_){
	stamina_++;}
else{
if (mouse_check_button(mb_left)){
		var t = instance_position(mouse_x, mouse_y, o_battle_enemy);
		//var t = instance_position(mouse_x, mouse_y, o_battle_entity);
		if(t!=noone){
			attack(atk_,acc_,crit_,t);
			stamina_ = 0;
			x-=20;}}
}
if(stamina_ == 1) x+=20;