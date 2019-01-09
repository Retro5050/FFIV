initialize_movement_entity(1,1,o_solid);
image_speed = 0;
acceleration_ = 2;
max_speed_ = 2;
direction_facing_ = dir.down;

global.player_health = 4;

enum player {
	move,
	interact
}

enum dir {
	right,
	up,
	left,
	down
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
sprite_[player.interact, dir.left] = s_knight_idle_left;
sprite_[player.interact, dir.down] = s_knight_idle_down;

//image_speed determines how fast your character animates
//spite_index determines the sprite that is displayed
//image_xscale is used to flip your character (-1)
//enums are global scope