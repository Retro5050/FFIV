/// @description Shop State

var _spacebar_pressed = o_input.spacebar_pressed_;


//Add the pointer object so that you can choose options
//if o_input.down { } 
//else if o_input.up { }
//you're doing great Ethan, dont give up. I bet you did well on that physics test!


if _spacebar_pressed == true {
	current_shop_menu_ = shop.leave;
	load_shop_menu(current_shop_menu_);
}





//if buy

//else if sell

//else exit



//if text_counter_ >= num_slides_ {
//	state_ = player.move;
//	text_counter_ = 0;
//	instance_destroy(text_id_);
//}