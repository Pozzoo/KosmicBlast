if (room == Room1){
	//Score no HUD
	draw_set_font(RetroGaming)
	font_add_enable_aa(false)
	draw_text_transformed(10, 10,"Score: " + string(global.points), 2, 2, 0)
	draw_text_transformed(10, 50,"High Score: " + string(pointsHigh), 2, 2, 0)

	//Foguete no HUD
	if (rocketWasShot == false){
		draw_sprite_ext(spr_rocket, 1, 1550, 50, 3, 3, 90, c_white, 1);
	}
}