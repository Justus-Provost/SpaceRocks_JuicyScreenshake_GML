/// @description Destroy Asteroid

audio_play_sound(snd_die, 0, 0);

with(obj_game)
{
game_score += 10;
}

instance_destroy();

with(other)
{
instance_destroy();
if(sprite_index == spr_asteroid_huge)
	{
	repeat(2)
		{
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		newAsteroid.sprite_index = spr_asteroid_med;
		}
	}
if(sprite_index == spr_asteroid_med)
	{
	repeat(2)
		{
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		newAsteroid.sprite_index = spr_asteroid_small;
		}
	}
repeat(10)
	{
	instance_create_layer(x, y, "Instances", obj_debris);
	}
}