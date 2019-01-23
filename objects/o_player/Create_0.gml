initialize_movement_entity(1,1,o_solid);
image_speed = 0;
acceleration_ = 2;
max_speed_ = 2;
direction_facing_ = dir.down;
x_facing_ = 0;
y_facing_ = 1;
text_counter_ = 0;
text_id_ = 0;
num_slides_ = 0;
action_ = 0;

current_shop_menu_ = -1;
menu_array_ = 0;
reset_shop_menu();


global.player_health = 4;

enum player {
	move,
	interact,
	talk,
	shop
}

enum action {
	buy,
	sell,
	leave
}

enum dir {
	right,
	up,
	left,
	down
}

enum shop {
	buy,
	sell,
	leave
}
starting_state_ = player.move;
state_ = player.move;

//Sprite move lookup table
sprite_[player.move, dir.right] = s_knight_run_right;
sprite_[player.move, dir.up] = s_knight_run_up;
sprite_[player.move, dir.left] = s_knight_run_right;
sprite_[player.move, dir.down] = s_knight_run_down;

//Sprite interact lookup table
sprite_[player.interact, dir.right] = s_knight_idle_right;
sprite_[player.interact, dir.up] = s_knight_idle_up;
sprite_[player.interact, dir.left] = s_knight_idle_right;
sprite_[player.interact, dir.down] = s_knight_idle_down;

//Sprite talk lookup table
sprite_[player.talk, dir.right] = s_knight_idle_right;
sprite_[player.talk, dir.up] = s_knight_idle_up;
sprite_[player.talk, dir.left] = s_knight_idle_right;
sprite_[player.talk, dir.down] = s_knight_idle_down;

//Sprite shop lookup table
sprite_[player.shop, dir.right] = s_knight_idle_right;
sprite_[player.shop, dir.up] = s_knight_idle_up;
sprite_[player.shop, dir.left] = s_knight_idle_right;
sprite_[player.shop, dir.down] = s_knight_idle_down;

//image_speed determines how fast your character animates
//spite_index determines the sprite that is displayed
//image_xscale is used to flip your character (-1)
//enums are global scope