function _atualizarLeaderboard (){
	for (i = 0; i < 5; i++){
		if (global.points > obj_leaderboard.leaderboard_array[i][1]){
			for (j = 4; j > i; j--){
				obj_leaderboard.leaderboard_array[j][0] = obj_leaderboard.leaderboard_array[j-1][0];
				obj_leaderboard.leaderboard_array[j][1] = obj_leaderboard.leaderboard_array[j-1][1];
	        }
	        obj_leaderboard.leaderboard_array[i][1] = global.points;
	        obj_leaderboard.leaderboard_array[i][0] = global.playerName;
			break;
		}
	}
}