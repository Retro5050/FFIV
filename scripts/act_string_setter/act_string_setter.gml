///@arg action
if(argument0.action_type == action_types.hit)
argument0.stringy = argument0.character.name+" attacks "+ argument0.character.targ.name;
else if(argument0.action_type == action_types.block)
argument0.stringy = argument0.character.name+"'s defense rose";
else if(argument0.action_type == action_types.spell)
argument0.stringy = argument0.character.spell_string;
