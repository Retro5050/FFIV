/// @description Insert description here
// You can write your code in this editor
var i;
for(i = 0; i<instance_number(o_battle_enemy); i++){
	var inst = instance_find(o_battle_enemy,i);
	draw_text(x,y+i*20,inst.hp_+"/"+inst.start_hp_);}