/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_main);
			break;
		case rm_main:
			room_goto(rm_start);
			break;
	}
}


