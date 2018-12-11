/// @description Insert description here
// You can write your code in this editor
if (is_cool && mouse_check_button(mb_left)){
		var t = instance_position(mouse_x, mouse_y, o_battle_enemy);
		//var t = instance_position(mouse_x, mouse_y, o_battle_entity);
		if(t!=noone){
			attack(atk_,acc_,crit_,t);
			is_cool = false;
			x-=20;}}
else if!(is_cool || mouse_check_button(mb_left)){
	is_cool = true;
	x+=20;}
	