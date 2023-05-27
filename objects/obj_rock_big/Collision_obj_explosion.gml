effect_create_above(ef_explosion, x, y, 1, c_white);
direction = random(360);
audio_play_sound(snd_RockExplosion, 1, false, 5);

//Destroi o objeto de estiver a 150 pixels de uma explosão
if collision_circle(x, y, 150, obj_explosion, false, true) {
	instance_destroy();
}

global.points += 50;