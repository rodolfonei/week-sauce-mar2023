/// @description Insert description here
// You can write your code in this editor

if (grounded) {
	show_debug_message(x == xprevious && y == yprevious);
	if (x == xprevious && y == yprevious) {
		sprite_index = spr_player_idle;
	} else {
		sprite_index = spr_player_walk;
	}
	
}

// Inherit the parent event
event_inherited();

