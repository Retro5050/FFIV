/// @description Insert description here
// You can write your code in this editor
start_hp_ = 10;
start_atk_ = 3;
start_def_ = 0;
start_acc_ = 1;
start_evd_ = 1;
start_crit_ = 1;
start_stamina_ = 150;
initialize_battle_stats(start_atk_,start_def_,start_acc_,start_evd_,start_crit_,start_hp_);
stamina_ = 0;
taisuru = instance_find(o_battle_party,0);
