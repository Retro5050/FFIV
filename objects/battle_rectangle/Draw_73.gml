/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
var i;

for(i = 0; i<instance_number(o_battle_enemy); i++){
	var inst = instance_find(o_battle_enemy,i);
	draw_text_transformed(x+20,y+i*20,string(inst.hp_)+"/"+string(inst.start_hp_),.5,.5,0);}