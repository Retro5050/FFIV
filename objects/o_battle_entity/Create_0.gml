/// @description Insert description here
// You can write your code in this editor
//initialize_battle_stats(start_atk_,start_def_,start_acc_,start_evd_,start_crit_,start_hp_);
var i = 0;
stats[i++] = start_atk_;
stats[i++] = start_def_;
stats[i++] = start_acc_;
stats[i++] = start_evd_;
stats[i++] = start_crit_;

hp_ = start_hp_;
battle_obj = instance_find(o_battle_object,0);
name = "none";
status_effects = ds_list_create();