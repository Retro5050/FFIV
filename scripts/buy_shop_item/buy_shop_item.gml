///@arg Item index
var _index = argument0;

if array_length_1d(inventory_) == 0 {
	inventory_[0] = menu_array_[_index];
}
else {
	inventory_[array_length_1d(inventory_)] = menu_array_[_index];
}