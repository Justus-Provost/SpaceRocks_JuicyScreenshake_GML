/// @description Shoot

var _newBullet = instance_create_layer(x, y, "Instances", obj_bullet);

_newBullet.direction = image_angle;
_newBullet.speed = 6;

audio_play_sound(snd_zap, 0, 0);