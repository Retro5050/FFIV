///@arg Array
///@arg Index
var _array = argument0;
var _index = argument1;

var _str =_array[_index];
var _i = 0;
for(var n = 0; n<string_length(_str); n++) {
	if string_char_at(_str, n) == "-"
		_i = n;
}

var _answer = string_copy(_str, _i+2, string_length(_str)-_i);

return _answer;