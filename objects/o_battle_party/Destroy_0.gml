/// @description Insert description here
// You can write your code in this editor
var a = ds_list_find_index(battle_obj.character_instances,self);
ds_list_delete(battle_obj.character_instances,a);

var b = ds_list_find_index(battle_obj.ready_characters,self);
ds_list_delete(battle_obj.ready_characters,a);
ds_list_delete(battle_obj.ready_names,a);

for(var i = 0;i<ds_list_size(battle_obj.waiting_actions);i++){
if(ds_list_find_value(battle_obj.waiting_actions,i).character == self)
ds_list_delete(battle_obj.waiting_actions,i);}