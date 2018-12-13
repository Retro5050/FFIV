/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left){
	if is_cool{
		var t = instance_position(mouse_x, mouse_y, o_battle_enemy);
		//var t = instance_position(mouse_x, mouse_y, o_battle_entity);
		if(t!=noone){
			attack(atk_,acc_,crit_,t);
			is_cool = false;}}}
else is_cool = true;