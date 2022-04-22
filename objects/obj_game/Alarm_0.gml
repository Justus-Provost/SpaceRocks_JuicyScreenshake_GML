/// @description Create Asteroids

if (room != rm_game)
{
exit;
}

alarm[0] = room_speed * 3;

var _choice = choose(0, 1);
if(_choice == 0)
{
var _xx = choose(room_width, 0);
var _yy = random_range(0, room_height);
}
else
{
var _yy = choose(room_height, 1);
var _xx = random_range(0, room_width);
}

instance_create_layer(_xx, _yy, "Instances", obj_asteroid);