// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_off_camera(_obj, _number){
	
	var xx,yy;
	var pad = 64;
	
	repeat(_number) {
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);
	
		while (point_in_rectangle(xx, yy, global.cameraX - pad, global.cameraY - pad,
			global.cameraX + global.cameraWidth + pad, global.cameraY + global.cameraHeight + pad)) {
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		}
	
		instance_create_layer(xx,yy,"Instances",_obj);
	}
}