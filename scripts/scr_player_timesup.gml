sprite_index = pep_hurt
alarm[5] = -1
if place_meeting(x, y, obj_timesup)
{
    sprite_index = pep_dead
    alarm[10] = 5
    vsp = -8
    hsp = -4
}


