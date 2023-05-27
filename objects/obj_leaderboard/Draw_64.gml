if (room == leaderboard){
	font_add_enable_aa(false)
	draw_set_font(RetroGaming);

	for(i = 0; i < 5; i++){
		draw_text_transformed(900, 400 + (50 * i), obj_leaderboard.leaderboard_array[i][1], 2, 2, 0);
	}
	
	for(i = 0; i < 5; i++){
		draw_text_transformed(670, 400 + (50 * i), obj_leaderboard.leaderboard_array[i][0], 2, 2, 0);
	}
}