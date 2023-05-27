if (room == Room1){
	//Atualiza o high score
	if (global.points > pointsHigh){
	pointsHigh = global.points;
	}
	//Cria n rochas grandes quando todas forem destruidas
	if instance_number(obj_rock_big) <= 0{

		for (var i = 0; i < obj_game.numPedras; i++){
			x1 = random(1600);
			y1 = random(1200);
	
			if !((x1 > obj_player.x + 100 && x1 < obj_player.x - 100) || (y1 > obj_player.x + 100 && y1 < obj_player.x - 100)){
				x2 = x1;
				y2 = y1;
				instance_create_layer(x2, y2, "instances", obj_rock_big);
				i++;
			}
		}
	}
	//Cria n rochas pequenas quando todas forem destruidas
	if instance_number(obj_rock_smol) <= 0{
		for (var i = 0; i < obj_game.numPedras; i++){
			x1 = random(1600);
			y1 = random(1200);
	
			if !((x1 > obj_player.x + 100 && x1 < obj_player.x - 100) || (y1 > obj_player.x + 100 && y1 < obj_player.x - 100)){
				x2 = x1;
				y2 = y1;
				instance_create_layer(x2, y2, "instances", obj_rock_smol);
				i++;
			}
		}
	}
}