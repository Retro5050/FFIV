text_box_ = false;

enum soldier {
	move,
	talk	
}

starting_state_ = soldier.move;
state_ = soldier.move;

//Sprite move lookup tables
sprite_[soldier.move] = s_soldier_run_down;

//Sprite talk loookup table
sprite_[soldier.talk] = s_soldier_run_down;