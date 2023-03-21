/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_center);

switch(room) {
	case rm_start:
		draw_set_colour(c_red);
		draw_text_transformed(
			room_width/2, 200,
			"Coughin' Don", 4, 4, 0
		);
		draw_text_transformed(
			room_width/2, 400,
			"PRESS ENTER TO START", 2, 2, 0
		);
	break;
	case rm_main:
		draw_set_colour(c_white);
		draw_text_transformed(100, 30, "Score: " + string(score), 2, 2, 0);
	break;
}
