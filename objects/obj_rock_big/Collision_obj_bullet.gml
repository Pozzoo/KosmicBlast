instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
direction = random(360);
audio_play_sound(snd_RockExplosion, 1, false, 8);
//Cria duas rochas pequenas quando a grande é destruida
if sprite_index == spr_rock_big{
        sprite_index = spr_rock_small;
        instance_copy(true);
//Cria n rochas grandes quando existir menos de 12 rochas na sala
} else if instance_number(obj_rock_big + obj_rock_smol) < 12 && object_exists(obj_player){
        sprite_index = spr_rock_big;
		for (var i = 0; i <= obj_game.numPedrasG; i++){
		x1 = random(1600);
		y1 = random(1200);
		//Verifica se a coordenada de spawn da rocha é diferente da coordenada atual do player (margem de 100 pixels)
		if !((x1 > obj_player.x + 100 && x1 < obj_player.x - 100) || (y1 > obj_player.x + 100 && y1 < obj_player.x - 100)){
			x2 = x1;
			y2 = y1;
			i++;
		}
	}
		x = x2;
		y = y2;
} else{
        instance_destroy();
}

global.points += 50;

