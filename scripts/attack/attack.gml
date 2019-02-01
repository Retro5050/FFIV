///@arg attacker
///@arg target

var attacker = argument0;
var target = argument1;
var atk = attacker.stats[stat_type.strength];
var defense = target.stats[stat_type.defense];
/*if(random(1)<=acc_pct){
	strength-=defense
	if(random(1)<=crit_pct) strength*=2;
	if(strength>0)target.hp_-=strength;}*/
var damage = atk - defense;
show_message(attacker.name+"; "+ target.name+"; "+string(damage));
target.hp_-=(damage);