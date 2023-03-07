/// @description Insert description here
// You can write your code in this editor

moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);

// Calculate direction for bullet
if (moveRight) {
	lastDir = 0;
	image_xscale = 1;
}
if (moveLeft) {
	lastDir = 180;
	image_xscale = -1;
}

// Calculate movement
vx = (moveRight - moveLeft) * walkSpeed;

// If moving
if (vx != 0 or vy != 0) {
	// Update positions
	x += vx;
	// y += vy;
}