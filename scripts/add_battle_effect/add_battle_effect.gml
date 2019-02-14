///@arg multiplier
///@arg time
///@arg affected stat
///@arg target
var a = instance_create_layer(0,0,layer,o_status_effect);
a.multiplier = argument0;
a.time = argument1;
a.affected_stat = argument2;
argument3.stats[a.affected_stat]*=a.multiplier;
ds_list_add(argument3.status_effects,a);
