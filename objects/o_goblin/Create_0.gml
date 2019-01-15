/// @description Insert description here
// You can write your code in this editor
start_hp_ = 3;
start_atk_ = 2;
start_def_ = 1;
start_acc_ = 1;
start_evd_ = 1;
start_crit_ = 1;
start_stamina_ = 120;
stamina_ = 0;
event_inherited();

battle_obj = instance_find(o_battle_object,0);
taisuru = instance_find(o_battle_party,0);
name = "goblin";