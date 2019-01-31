///@arg Item index
var _index = argument0;

if array_length_1d(test_) == 0 {
	test_[0] = menu_array_[_index];
}
else if _index != array_length_1d(test_)-1 {
	test_[array_length_1d(test_)] = menu_array_[_index];
}
else {
	reset_shop_menu();//left off here
}
show_message(test_);