/// @description Interact State
//show_message(direction_facing_);//shows 1,2,3,4

//use position_meeting or place_meeting

get_x_y_facing();

if position_meeting(x + x_facing_*10, y + y_facing_*10, o_npc) {
	state_ = player.talk;
	text_id_ = instance_create_layer(self.x-60, self.y-69, "Text", o_text_box);
	show_message(text_id_);
}
//state_ = player.move;