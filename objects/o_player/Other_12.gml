/// @description Talk State

instance_create_layer(self.x-60, self.y-69, "Text", o_text_box);
var _counter = 0;

with (instance_nearest(self.x, self.y, o_npc)) {
	var _num_slides = help.num_talk_slides;
}

_counter = 0;
//doesnt work!!!
while _counter<_num_slides {
	if mouse_check_button(mb_left) {
		_counter = _counter + 1;
	}
	if _counter ==0 {
		exit;
	}
}
show_message("reahes move state again");
state_ = 0;