/// @description Insert description here
// You can write your code in this editor
enemies = array_create(2,0);
enemies[0] = o_birdie;
enemies[1] = o_goblin;

characters = clean_party();

var p_len=array_length_1d(characters);
var party_x_displacement = 150;
var party_y_displacement = 100/(p_len+1);

character_instances = array_create(p_len);
for(var i=0;i<p_len;i++){
character_instances[i] = instance_create_layer(party_x_displacement,party_y_displacement*(i+1),layer,characters[i]);
}

var e_len=array_length_1d(enemies);
var enemy_x_displacement = 30;
var enemy_y_displacement = 100/(e_len+1);

enemy_instances = array_create(e_len);
for(var i=0;i<e_len;i++){
enemy_instances[i] = instance_create_layer(enemy_x_displacement,enemy_y_displacement*(i+1),layer,enemies[i]);
}

//adjusting party

character_names = array_create(p_len);
for(var i =0;i<p_len;i++)
	character_names[i] = characters[i].name;


enemy_names = array_create(e_len);
for(var i =0;i<e_len;i++)
	enemy_names[i] = enemies[i].name;

move_menu = array_create(4);
move_menu[0] = "Attack";
move_menu[1] = "Magic";
move_menu[2] = "Block";
move_menu[3] = "Item";

enum menu_stages{
	character,
	move,
	target}
stage = menu_stages.character;
menu_options = character_names

menu_displacement = 80;
pointer_ = instance_create_depth(x+5,y+5,-1,pointer);
pointer_.position = 0;
pointer_.x = menu_displacement-3;

battle_pause = false;
current_character = noone;
move_type = 0;
target_entity = 0;