/// @description Talk State


//YOU JUST GOT THE OBJ_ID AND NOW YOU NEED TO FIGURE OUT WHAT TO USE WITH IT
//ALSO YOU NEED TO FIGURE OUT A WAY TO REDRAW EVERYTHING BECAUSE YOU CANT JUST CREATE
//AN OBJECT OF TEXT AND DELETE IT

var _spacebar_pressed = o_input.spacebar_pressed_;

if _spacebar_pressed == true {
	text_counter_++;
}

if text_counter_ >= num_slides_ {
	state_ = 0;
	text_counter_ = 0;
	instance_destroy(text_id_);
}

/*
while text_counter_<_num_slides {
	if mouse_check_button(mb_left) {
		text_counter_ = text_counter_ + 1;
	}
	if text_counter_ ==0 {
		exit;
	}
}
show_message("reaches move state again");
state_ = 0;