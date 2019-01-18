/// @description Talk State

var _spacebar_pressed = o_input.spacebar_pressed_;

if _spacebar_pressed == true {
	text_counter_++;
}

if text_counter_ >= num_slides_ {
	state_ = 0;
	text_counter_ = 0;
	instance_destroy(text_id_);
}