/// @description Check Status

if(room == rm_game)
{
if(game_score >= 1000)
	{
	audio_play_sound(snd_win, 0, 0);
	room_goto(rm_win);
	}
if(game_lives <= 0)
	{
	audio_play_sound(snd_die, 0, 0);
	room_goto(rm_gameover);
	}
var _pause = keyboard_check_pressed(ord("P"));
if (_pause)
	{
	paused = !paused;
	if(paused == false)
		{
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
		}
	}
if(paused == true)
	{
	alarm[0]++;
	alarm[1]++;
	}
}