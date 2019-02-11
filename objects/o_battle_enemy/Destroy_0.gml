/// @description Insert description here
// You can write your code in this editor
var a = ds_list_find_index(battle_obj.enemy_instances,self)
ds_list_delete(battle_obj.enemy_instances,a);
//show_message(string(ds_list_size(battle_obj.enemy_instances)));
ds_list_delete(battle_obj.enemy_names,a);