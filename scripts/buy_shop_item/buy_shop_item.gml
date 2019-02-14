///@arg Item index
var _index = argument0;

if _index >= array_length_1d(menu_array_) {
	var _string_price = string_digits(menu_array_[_index]);
	var _price = real(_string_price);

	if _price <= money_ {
		buy_something_ = true;
	
		o_player.money_ -= _price;

		if array_length_1d(inventory_) == 0 {
			inventory_[0] = menu_array_[_index];
		}
		else {
			inventory_[array_length_1d(inventory_)] = menu_array_[_index];
		}
	}
}