/// @description Destroy Player

if(invulnerable == false)
{
with(obj_game)
	{
	alarm[1] = room_speed;
	}
audio_play_sound(snd_die, 0, 0);
with(obj_game)
	{
	game_lives -= 1;
	}
repeat(10)
	{
	instance_create_layer(x, y, "Instances", obj_debris);
	}
instance_destroy();
}