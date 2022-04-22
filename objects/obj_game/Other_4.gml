/// @description Start Room

if(room == rm_game)
{
if (audio_is_playing(msc_song))
	{
	audio_stop_sound(msc_song);
	}
audio_play_sound(msc_song, 0, 1);
alarm[0] = room_speed;
repeat(6)
	{
	var _choice = choose(0, 1);
	if(_choice == 0)
		{
		var _xx = (random_range(0, room_width * 0.3));
		}
	else
		{
		var _xx = (random_range(room_width * 0.7, room_width ));
		}
	_choice = choose(0, 1);
	if(_choice == 0)
		{
		var _yy = (random_range(0, room_height * 0.3));
		}
	else
		{
		var _yy = (random_range(room_height * 0.7, room_height ));
		}
	instance_create_layer(_xx, _yy, "Instances", obj_asteroid);
	}
}