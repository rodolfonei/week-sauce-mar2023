/// @description Insert description here
// You can write your code in this editor

if (grounded)
{
	// This sets the Y velocity to negative jump_speed, making the player immediately jump upwards. It
	// will automatically be brought down by the gravity code in the parent's Begin Step event.
	vy = -jumpSpeed;

	// This sets 'grounded' to false, so that any events after this know that the player is not supposed
	// to be on the ground anymore.
	grounded = false;

}






