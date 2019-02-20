/// @description Insert description here
// You can write your code in this editor
var i;
var str;
for(i = 0; i<ds_list_size(enemy_instances); i++){
	with (ds_list_find_value(enemy_instances,i)) str = name+":"+ string(stats[stat_type.hp])+"/"+string(start_hp_);
	draw_text_transformed(x+10,i*5+y,str,.4,.4,0);}
for(i = 0; i<ds_list_size(character_instances); i++){
	with (ds_list_find_value(character_instances,i)) str = name+":"+string(stats[stat_type.hp])+"/"+string(start_hp_)+" ; "+string(stamina_)+"/"+string(start_stamina_);
	draw_text_transformed(x+160,i*5+y,str,.4,.4,0);}
	
if(false){if(show_menu){
for(i = 0; i<ds_list_size(menu_options); i++){
	if(i == pointer_.position)pointer_.y = i*10+y+1;
	draw_text_transformed(x+menu_displacement,i*10+y,ds_list_find_value(menu_options,i),.5,.5,0);}}}
	
if(show_menu){
for(i = 0; i<ds_list_size(menu_options); i++){
	if(abs(i - pointer_.position)<=2)
	draw_text_transformed(x+menu_displacement,(i-pointer_.position)*8+y+19,ds_list_find_value(menu_options,i),.5,.5,0);}}

else if(show_action){
	pointer_.y = -50;
	draw_text_transformed(x+menu_displacement,i*10+y,(ds_list_find_value(waiting_actions,0)).stringy,.5,.5,0);
}