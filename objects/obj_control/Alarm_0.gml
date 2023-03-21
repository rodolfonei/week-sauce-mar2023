/// @description Insert description here
// You can write your code in this editor
enemy = instance_create_layer(
	choose(camera_get_view_x(view_camera[0]) - 20, camera_get_view_x(view_camera[0]) + 270), 
	185, 
	"Instances", 
	choose(obj_enemy1, obj_enemy2, obj_enemy_baby)
);
if (instance_exists(obj_player)) {
	if (enemy.x > obj_player.x) {
		enemy.image_xscale = -1;
		enemy.direction = 180;
	} else {
		enemy.image_xscale = 1;
		enemy.direction = 0;
	}
}

if (room == rm_main) {
	alarm[0] = 40;
}







