/// @arg type
/// @arg direction
if(argument0 == o_goblin){
	if(argument1)
		x+=20;
	else
		x-=20;
}
else if(argument0 == o_birdie){
	if(argument1){
		x+=20;
		y+=20;}
	else{
	x-=20;
	y-=20;
	}
}

else if(argument0 == o_tawtpiha){
	if(argument1){
		x+=20;
		image_angle-=30;}
	else{
	x-=20;
	image_angle+=30;
	show_message("hello the code works or it should or something");
	}
}