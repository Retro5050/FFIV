/// @description Draws Text

with o_player {
	if state_ == player.talk {
		//var _num_slides = obj_id_.num_talk_slides_;
		var _current_slide = text_counter_;
		draw_text_transformed(self.x-50, self.y-59, obj_id_.text_slides_[_current_slide], .4, .4, 0);
	}
}