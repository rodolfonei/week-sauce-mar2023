/// @description Insert description here
// You can write your code in this editor

grounded = check_collision(0, 1);

// This checks if 'grounded' is true. This means the character is standing on ground.
if (grounded)
{
	// This stores the character's current position in the 'grounded_x' and 'grounded_y' variables.
	// Since these variables are only changed when the character is on ground, they only store the position
	// for when the character was last on ground. These values can then be used to restore the player's position after
	// it falls off a platform into a pit.
} else {
	vy += gravSpeed;
}








