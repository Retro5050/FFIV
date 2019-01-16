/// @description Talk State

with (instance_nearest(self.x, self.y, o_npc)) {
	var _num_slides = self.num_talk_slides_;
}

var _spacebar_pressed = o_input.spacebar_pressed_;

if _spacebar_pressed == true {
	text_counter_++;
}

if text_counter_ >= _num_slides {
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