/// @description Draw GUI / HUD

switch(room)
{
case rm_game:
	draw_text(20, 20, string("Score: ") + string(game_score));
	var _w = sprite_get_width(spr_lives);
	var _xpos = 0;
	for(var i = game_lives; i > 0; --i;)
		{
		draw_sprite(spr_lives, 0, 30 + _xpos, 60);
		_xpos += _w;
		}
	if(paused == true)
		{
		var _check = surface_exists(paused_surf);
		if(_check == false)
			{
			if(paused_surf == -1)
				{
				instance_deactivate_all(true);
				}
			paused_surf = surface_create(room_width, room_height);
			surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
			}
		else
			{
			draw_surface(paused_surf, 0, 0);	
			draw_set_alpha(0.5);
			draw_set_colour(c_black);
			draw_rectangle(0, 0, room_width, room_height, 0);
			draw_set_alpha(1);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_colour(c_aqua);
			draw_text_transformed(room_width / 2, (room_height / 2) - 50, string("PAUSED") + "", 3, 3, 0);
			draw_set_colour(c_white);
			}
		}
	break;

case rm_start:
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_colour(c_yellow);
	draw_set_alpha(1);
	draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	draw_set_colour(c_white);
	draw_text(250, 200, string("Score 1000 points to win!") + "");
	draw_text(250, 230, string("Move with UP / LEFT / RIGHT arrow keys") + "");
	draw_text(250, 260, string("Press SPACE to shoot") + "");
	draw_set_colour(c_yellow);
	draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	break;

case rm_win:
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_colour(c_lime);
	draw_set_alpha(1);
	draw_text_transformed(250, 150, string("YOU WIN ") + "", 3, 3, 0);
	draw_set_colour(c_white);
	draw_text(250, 250, string("FINAL SCORE: ") + string(game_score));
	draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<" ) + "");
	draw_set_halign(fa_left);
	break;

case rm_gameover:
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_colour(c_red);
	draw_set_alpha(1);
	draw_text_transformed(250, 150, string("YOU LOSE ") + "", 3, 3, 0);
	draw_set_colour(c_white);
	draw_text(250, 250, string("FINAL SCORE: ") + string(game_score));
	draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<" ) + "");
	draw_set_halign(fa_left);
	break;
}