var num = 0;
for(var i =0;i<array_length_1d(global.party);i++)
	if(global.party[i]!=noone) num++;
characters = array_create(num);
for(var i =0;i<num;i++)
	characters[i] = global.party[i];
return characters;