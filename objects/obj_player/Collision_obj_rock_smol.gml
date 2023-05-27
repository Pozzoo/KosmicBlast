//Colisão e efeitos com a rocha pequena
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
audio_play_sound(snd_PlayerDeath, 1, false, 10);
obj_game.alarm[0] = 120;