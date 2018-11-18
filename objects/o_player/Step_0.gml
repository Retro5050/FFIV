image_speed = 0;
var _animation_speed = _animation_speed;

if keyboard_check(vk_right) and not place_meeting(x+speed_, y, o_solid) {
	x+=speed_;
	sprite_index = s_knight_run_right;
	image_speed = _animation_speed;
}

if keyboard_check(vk_left) and not place_meeting(x-speed_, y, o_solid) {
	x-=speed_;
	sprite_index = s_knight_run_left;
	image_speed = _animation_speed;
}

if keyboard_check(vk_up) and not place_meeting(x, y-speed_, o_solid) {
	y-=speed_;
	sprite_index = s_knight_run_up;
	image_speed = _animation_speed;
}

if keyboard_check(vk_down) and not place_meeting(x, y+speed_, o_solid) {
	y+=speed_;
	sprite_index = s_knight_run_down;
	image_speed = _animation_speed;
}