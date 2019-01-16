/// @description Insert description here
// You can write your code in this editor
var i;
var str;
for(i = 0; i<instance_number(o_battle_enemy); i++){
	with (instance_find(o_battle_enemy,i)) str = name+":"+ string(hp_)+"/"+string(start_hp_)
	draw_text_transformed(x+10,i*5+y,str,.4,.4,0);}
for(i = 0; i<instance_number(o_battle_party); i++){
	with(instance_find(o_battle_party,i)) str = name+":"+string(hp_)+"/"+string(start_hp_)+" ; "+string(stamina_)+"/"+string(start_stamina_)
	draw_text_transformed(x+160,i*5+y,str,.4,.4,0);}
	
draw_text_transformed(x+menu_displacement,y,current_character.name,.5,.5,0);
var array;
if(menu_stages[stage] = "character")
	//array = 
	for(i = 0; i<array_length_1d(array); i++){
	if(i == pointer_.position)pointer_.y = i*10+y+11;
	draw_text_transformed(x+menu_displacement,i*10+y+10,menu_options[i],.5,.5,0);}

	
	
