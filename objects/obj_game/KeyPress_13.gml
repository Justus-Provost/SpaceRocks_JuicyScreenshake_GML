/// @description Switch Game State

switch(room)
{
case rm_start:
	room_goto(rm_game);
	break;

case rm_gameover:
	game_restart();
	break;

case rm_win:
	game_restart();
	break;
}