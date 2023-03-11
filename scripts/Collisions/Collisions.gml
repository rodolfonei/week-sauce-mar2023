// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// This function checks if the instance is colliding with an object, or a tile, at the current
// position + the given movement values (_move_x and _move_y).
// The function returns true if a collision was found, or false if a collision was not found.
function check_collision(_move_x, _move_y) 
{
	var _tilemap = layer_tilemap_get_id("CollisionTiles"); 
	// The function continues if there were no object collisions. In this case we check for tile
	// collisions, at each corner of the instance's bounding box.
	// This checks for tile collision at the top-left corner of the instance's mask
	var _left_top = tilemap_get_at_pixel(_tilemap, bbox_left + _move_x, bbox_top + _move_y);

	// This checks for tile collision at the top-right corner of the instance's mask
	var _right_top = tilemap_get_at_pixel(_tilemap, bbox_right + _move_x, bbox_top + _move_y);

	// This checks for tile collision at the bottom-right corner of the instance's mask
	var _right_bottom = tilemap_get_at_pixel(_tilemap, bbox_right + _move_x, bbox_bottom + _move_y);

	// This checks for tile collision at the bottom-left corner of the instance's mask
	var _left_bottom = tilemap_get_at_pixel(_tilemap, bbox_left + _move_x, bbox_bottom + _move_y);

	// The results of the above four actions were stored in temporary variables. If any of those variables were true, meaning a tile
	// collision was found at any given corner, we return true and end the function.
	if (_left_top or _right_top or _right_bottom or _left_bottom)
	{
		return true;
	}

	// If no tile collisions were found, the function continues.
	// In that case we return false, to indicate that no collisions were found, and the instance is free to move to the new position.
	return false;
}