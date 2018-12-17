initialize_movement_entity(1,1,o_solid);
image_speed = 0;
acceleration_ = 2;
max_speed_ = 2;
direction_facing_ = dir.down;
direction_ = 0;
counter_ = 0;
is_moving_ = false;
x_move_ = 0;
y_move_ = 0;

global.player_health = 4;

enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}

//Sprite move lookup table
sprite_[player.move, dir.right] = s_knight_run_right;
sprite_[player.move, dir.up] = s_knight_run_up;
sprite_[player.move, dir.left] = s_knight_run_right;
sprite_[player.move, dir.down] = s_knight_run_down;

//image_speed determines how fast your character animates
//spite_index determines the sprite that is displayed
//image_xscale is used to flip your character (-1)
//enums are global scope