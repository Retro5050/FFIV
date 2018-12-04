///@arg strenght
///@arg acciracuy
///@arg critical
///@arg target
/*
var target = argument3;
var crit_pct= argument2/100;
var acc_pct=argument1/100;
var strength = argument0;
var defense = target.def_;
if(random(1)<=acc_pct){
	strength-=defense
	if(random(1)<=crit_pct) strength*=2;
	if(strength>0)target.hp_-=strength;}
	*/
var target = argument3;
var strength = argument0;
var defence = target.def_;
target.hp_-=(strength - defence);