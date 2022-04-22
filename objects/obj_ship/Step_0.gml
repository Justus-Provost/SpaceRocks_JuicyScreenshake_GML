/// @description Wrap Room

move_wrap(1, 1, sprite_width / 2);

if (invulnerable == true)
{
if (frac(alarm[0] / 10) > 0.5)
	{
	image_alpha = 0;
	}
else
	{
	image_alpha = 1;
	}
}
else
{
image_alpha = 1;
}