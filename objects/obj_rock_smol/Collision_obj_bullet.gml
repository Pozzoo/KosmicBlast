instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
audio_play_sound(snd_RockExplosion, 1, false, 5);

instance_destroy();

global.points += 50;