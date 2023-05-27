//Quando colide com uma rocha cria os efeitos, som e objeto explosão
instance_destroy();

effect_create_above(ef_explosion, x, y, 300, c_yellow)
effect_create_above(ef_ring, x, y, 300, c_white)

instance_create_layer(x, y, "Instances", obj_explosion)

audio_play_sound(snd_Rocket, 1, false, 9)