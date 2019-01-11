/// @description Talk State

instance_create_layer(self.x-60, self.y-65, "Text", o_text_box);
var _counter = 0;

with (instance_nearest(self.x, self.y, o_npc)) {
	var num_slides = help.num_talk_slides;
}

while _counter<num_slides {
	_counter = 5;
}