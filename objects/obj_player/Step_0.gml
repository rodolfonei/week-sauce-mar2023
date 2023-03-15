/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (grounded) {
	if (x == xprevious && y == yprevious) {
		sprite_index = spr_player_idle;
	} else {
		sprite_index = spr_player_walk;
	}
	
}



