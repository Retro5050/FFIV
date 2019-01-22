///@arg attacker
///@arg target

var attacker = argument0;
var target = argument1;
var atk = attacker.atk_;
var defense = target.def_;
/*if(random(1)<=acc_pct){
	strength-=defense
	if(random(1)<=crit_pct) strength*=2;
	if(strength>0)target.hp_-=strength;}*/
	
target.hp_-=(atk - defense);