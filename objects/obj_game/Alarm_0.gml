var highS = true;

for (i = 0; i < 5; i++){
	if (obj_leaderboard.leaderboard_array[i][1] < global.points){
		room_goto(2);
	} else {
		highS = false;
	}
}

if (highS == false){
	room_restart();
	global.points = 0;
}
