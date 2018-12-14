/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
var i;

for(i = 0; i<instance_number(o_battle_enemy); i++){
	var inst = instance_find(o_battle_enemy,i);
	draw_text_transformed(x+20,y+i*10,string(inst.hp_)+"/"+string(inst.start_hp_),.5,.5,0);}
for(i = 0; i<instance_number(o_battle_party); i++){
	var inst = instance_find(o_battle_party,i);
	draw_text_transformed(x+100,y+i*10,string(inst.hp_)+"/"+string(inst.start_hp_)+" ; "+string(inst.stamina_)+"/"+string(inst.start_stamina_),.5,.5,0);}