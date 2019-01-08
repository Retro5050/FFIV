image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);

if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}
else {
	image_speed = 1;
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	
	
	/*if alarm[0]  == -1 break;
	if is_moving_ == false {
		is_moving_ = true;
		alarm[0] = 32;
	}
	else {
		if(alarm[0] == -1) {
			
		}
	}*/
	
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
}

sprite_index = sprite_[player.move, direction_facing_];
move_movement_entity(false);


// _x_input is -1 or 1, depending on if he's facing to the right or left.
// _y_input is -1 or 1, depending on if he's facing up or down
// keyboard_check_pressed is only true when you first hit the button (initally pressed)