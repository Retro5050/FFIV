/// @description phys attack
//show_message(targ.name);
var atk = stats[stat_type.strength];
var defense = targ.stats[stat_type.defense];
/*if(random(1)<=acc_pct){
	strength-=defense
	if(random(1)<=crit_pct) strength*=2;
	if(strength>0)target.hp_-=strength;}*/
var damage = nn_sub(atk,defense);
targ.stats[stat_type.hp]-=damage;
stamina_ = 0;
return damage;

