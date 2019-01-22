/// @description Draws Text

with o_player {
	if state_ == player.talk {
		draw_text_transformed(self.x-50, self.y-59, obj_id_.text_slides_[text_counter_], .4, .4, 0);
	}
	else if state_ == player.shop {
		
		draw_text_transformed(self.x-50, self.y-59, "What would you like to do?", .4, .4, 0);
	}
}

//should this be in draw end