/// @description Shoots ray
// You can write your code in this editor
var inst = instance_create_layer(x, y - 3, "Instances", obj_projectile);
if (obj_player.image_xscale == 1) {
	playerDir = 0;
}
if (obj_player.image_xscale == -1) {
	playerDir = 180;
}

inst.direction = playerDir;







