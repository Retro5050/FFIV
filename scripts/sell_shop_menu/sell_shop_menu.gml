///@arg Inventory
///@arg Index

var _inventory = argument0;
var _index = argument1;
var _length = array_length_1d(inventory_);

sell_something_ = true;

var _str = split_string(_inventory, _index);

var _string_price = string_digits(_str);
var _price = real(_string_price);
o_player.money_ += _price;

for(var n = _index; n<_length; n++) {
	if n != _length-1 {//show_message("index!= is called");
		inventory_[n] = inventory_[n+1];
	}
	else {//show_message("last index is called");
		inventory_[n] = "          ";
	}
}