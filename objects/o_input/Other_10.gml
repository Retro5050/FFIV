/// @description Get Input
right_ = keyboard_check(vk_right);//if activated, _right = 1, also true
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

action_one_pressed_ = keyboard_check_pressed(ord("ENTER"));
spacebar_pressed_ = keyboard_check_pressed(ord(" "));
escape_pressed_ = keyboard_check_pressed(vk_escape);