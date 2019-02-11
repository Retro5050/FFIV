/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i<ds_list_size(status_effects);i++){
	if(!battle_obj.pause){
		var effect = ds_list_find_value(status_effects,i)
		effect.time--;
		if(effect.time == 0){
		//show_message("time");
		stats[effect.affected_stat]/=effect.multiplier;
		ds_list_delete(status_effects,i--);}}}