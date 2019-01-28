///@arg Action
var _action = argument0;

if room = r_baron_item_shop {
	if _action = shop.buy {
		menu_array_[0] = "Potion - 10 gil";
		menu_array_[1] = "Antidote - 20 gil";
		menu_array_[2] = "Life - 100 gil";
	}
	else if _action = shop.sell {
		
	}
	else {
		reset_shop_menu();
		state_ = player.move;
		instance_destroy(text_id_);
		instance_destroy(pointer_id_);
	}
}