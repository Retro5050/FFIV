/// @description Interact State
//show_message(direction_facing_);//shows 1,2,3,4

//use position_meeting or place_meeting

get_x_y_facing();

if position_meeting(x + x_facing_*10, y + y_facing_*10, o_soldier) {
	state_ = 2;
}
state_ = player.move;