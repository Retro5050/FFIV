/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left){
	show_message("left")
	var t = instance_position(mouse_x, mouse_y, o_battle_enemy);
	if(t!=noone) attack(atk_,acc_,crit_,t);
	else show_message("no target");}
	