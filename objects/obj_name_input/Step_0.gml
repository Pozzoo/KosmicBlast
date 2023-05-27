entered = false;

	if (string_length(keyboard_string)<=4) 
	    global.playerName = keyboard_string;
	else
	    keyboard_string = global.playerName;
	
	if ((keyboard_check_pressed(vk_enter)) && (entered == false)) {
		obj_leaderboard._atualizarLeaderboard();
		entered = true;
	}