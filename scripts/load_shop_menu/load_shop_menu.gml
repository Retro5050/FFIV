///@arg Action
var _action = argument0;

if _action = shop.sell {
		
}

if _action = shop.buy {
	if room = r_baron_item_shop {
			menu_array_[0] = "Potion - 10 gil";
			menu_array_[1] = "Antidote - 20 gil";
			menu_array_[2] = "Life - 100 gil";
	}
	if room = r_baron_weapon_shop {
		menu_array_[0] = "Iron Sword - 100 gil";
		menu_array_[1] = "Mythril Sword - 300 gil";
		menu_array_[2] = "Iron Armor - 500 gil";
	}
}

else {
	reset_shop_menu();
	state_ = player.move;
	instance_destroy(text_id_);
	instance_destroy(pointer_id_);
}