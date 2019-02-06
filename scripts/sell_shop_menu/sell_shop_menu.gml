///@arg Inventory
///@arg Index

var _inventory = argument0;
var _index = argument1;
var _length = array_length_1d(inventory_);

var _str = split_string(_inventory, _index);

for(var n = _index; n<_length; n++) {
	if n != _length-1 {//show_message("index!= is called");
		inventory_[n] = inventory_[n+1];
	}
	else {//show_message("last index is called");
		inventory_[n] = "          ";
	}
}