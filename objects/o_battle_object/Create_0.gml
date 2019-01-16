/// @description Insert description here
// You can write your code in this editor
enemies = array_create(2,0);
enemies[0] = o_birdie;
enemies[1] = o_goblin;
battle_pause = false;

move_menu = array_create(3);
move_menu[0] = "Attack";
move_menu[1] = "Magic";
move_menu[2] = "Block";

menu_displacement = 80;
pointer_ = instance_create_depth(x+5,y+5,-1,pointer);
pointer_.position = 0;
pointer_.x = menu_displacement-3;

menu_stages = array_create(3)
menu_stages[0] = "character";
menu_stages[1] = "move";
menu_stages[2] = "target";
stage = 0;

current_character = o_battle_cecil;
var p_len=ds_list_size(global.party);
var party_x_displacement = 150;
var party_y_displacement = 100/(p_len+1);

var i;
for(i=0;i<p_len;i++){
instance_create_layer(party_x_displacement,party_y_displacement*(i+1),layer,ds_list_find_value(global.party,i));
}

var e_len=array_length_1d(enemies);
var enemy_x_displacement = 30;
var enemy_y_displacement = 100/(e_len+1);

var i;
for(i=0;i<e_len;i++){
instance_create_layer(enemy_x_displacement,enemy_y_displacement*(i+1),layer,enemies[i]);
}

