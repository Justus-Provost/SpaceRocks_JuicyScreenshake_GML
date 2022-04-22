/// @description Create Asteroid

sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge);
direction = floor(random_range(0, 359 + 1));
speed = 1;