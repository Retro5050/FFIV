/// @description Talk State

with (instance_nearest(self.x, self.y, o_npc)) {
	var _num_slides = help.num_talk_slides_;
}//FIGURE THIS OUT! HOW TO GET THE BIG BLUE TEXT BOX TO GO AWAY

var _ji = o_input.spacebar_pressed_;

if _ji == true {
	text_counter_++;
}

if text_counter_ >= _num_slides {
	state_ = 0;
	text_counter_ = 0;
	instance_destroy("Text");//FIGURE THIS OUT
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