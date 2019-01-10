/// @description Insert description here
// You can write your code in this editor
enemies = array_create(2,0);
enemies[0] = o_birdie;
enemies[1] = o_goblin;

var len=array_length_1d(enemies);
var enemy_x_displacement = 30;
var enemy_y_displacement = 100/(len+1);

var i;
for(i=0;i<len;i++){
instance_create_layer(enemy_x_displacement,enemy_y_displacement*(i+1),layer,enemies[i]);
}
