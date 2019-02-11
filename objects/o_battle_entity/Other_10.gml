/// @description attack
// You can write your code in this editor
var defense = targ.stats[stat_type.defense];
/*if(random(1)<=acc_pct){
	strength-=defense
	if(random(1)<=crit_pct) strength*=2;
	if(strength>0)target.hp_-=strength;}*/
var damage = nz_sub(stats[stat_type.strength],defense);
targ.stats[stat_ty]-=damage;
return damage;
//bill cosby was innocent because ur mom was concious
