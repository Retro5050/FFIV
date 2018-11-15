initialize_movement_entity(0.5, 1, o_solid);
//initialize_hurtbox_entity();	doesnt take damage
image_speed = 0;
acceleration_ = 2;
max_speed_ = 1.5;
direction_facing_ = dir.right;

enum player {
	move	
}

enum dir {
	right,
	up,
	left,
	down	
}

starting_state_ = player.move;//maybe unnecesary
state_ = player.move;

//Sprite move lookup table
sprite_[player.move, dir.right] = s_knight_run_right;
sprite_[player.move, dir.left] = s_knight_run_left;
sprite_[player.move, dir.up] = s_knight_run_up;
sprite_[player.move, dir.down] = s_knight_run_down;