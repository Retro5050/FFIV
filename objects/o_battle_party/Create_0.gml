/// @description Insert description here
// You can write your code in this editor
stamina_ = start_stamina_;
enum party_states{
	active,
	a_recover,
	block,
	b_recover,
	spell,
	s_recover,
	rest,
}
state_ = party_states.rest
event_inherited();