/// @description Shop State

var _spacebar_pressed = o_input.spacebar_pressed_;
var _escape_pressed = o_input.escape_pressed_;
var _player_x = self.x;
var _player_y = self.y;

if keyboard_check_pressed(vk_up) and can_select_ {
	if current_menu_slide_ != 0 {
		can_select_ = false;
		alarm[0] = 5;
		current_menu_slide_--;
		
		with pointer {
		self.y=self.y-10;
		}
	}
}
else if keyboard_check_pressed(vk_down) and can_select_{
	if current_menu_slide_ != array_length_1d(menu_array_)-1 {
		can_select_ = false;
		alarm[0] = 5;
		current_menu_slide_++;
		
		with pointer {
		self.y=self.y+10;
		}
	}
}
else if _spacebar_pressed == true {
	if current_shop_menu_ == 0 {
		load_shop_menu(current_menu_slide_++);
		current_shop_menu_ = current_menu_slide_;
		current_menu_slide_ = 0;
		with pointer {
			self.x = _player_x - 50;
			self.y = _player_y - 48;
		}
	}
	else if current_shop_menu_ == 1 {
		buy_shop_item(current_menu_slide_);
	}
	else if current_shop_menu_ == 2 {
		sell_shop_menu(inventory_, current_menu_slide_);
	}
}
else if _escape_pressed == true {
	reset_shop_menu();
	state_ = player.move;
	instance_destroy(text_id_);
	instance_destroy(pointer_id_);
}