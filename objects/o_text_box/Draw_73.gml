/// @description Draws Text

with o_player {
	var _draw_x = self.x-50;
	var _draw_y = self.y-59;
	
	if state_ == player.talk {
		draw_text_transformed(_draw_x, _draw_y, obj_id_.text_slides_[text_counter_], .4, .4, 0);
	}
	else if state_ == player.shop {
		if current_shop_menu_ == 0 { draw_text_transformed(_draw_x, _draw_y, "What would you like to do?", .4, .4, 0); }
		else if current_shop_menu_ == 1 { draw_text_transformed(_draw_x, _draw_y, "Buy anything you'd like!", .4, .4, 0); }
		else if current_shop_menu_ == 2 { draw_text_transformed(_draw_x, _draw_y, "What would you like to sell?", .4, .4, 0); }
		
		for(var n = 1; n<4; n++) {
			draw_text_transformed(_draw_x+5, _draw_y+10*n, menu_array_[n-1], .4, .4, 0);
		}
	}
}

//should this be in draw end